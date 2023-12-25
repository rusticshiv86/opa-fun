package christmas.fun.policy

# This fun policy has been created to apply check against data retrieved from https://daten.berlin.de/datensaetze/berliner-weihnachtsm%C3%A4rkte on below scenarios
# 1: Cant visit a Christmas market if it closes before 24th December ( of course, i can only visit after my holidays allow ;) )
# 2: Cant visit a Christmas market if its maps location has not been specified ( need to drive using maps ;) )

######################################################################## Rule 1 Policy ##############################################################################

can_visit_after := "2023-12-24"

## policy check if christmas market ends before 24th December

deny[msg] {
some i
market := input.index[i]
market_name := market.name
end_date := market.bis
end_date_simplified := time.parse_ns("2006-01-02" , end_date)
end_date_simplified < time.parse_ns("2006-01-02" , can_visit_after)
msg := sprintf("christmas visit policy failed: Can't visit Berlin Christmas market '%v' since it closes before %v",[market_name,end_date])
}

######################################################################## Rule 2 Policy ##############################################################################

deny[msg] {
some i
market := input.index[i]
market_name := market.name
lat := market.lat
lng := market.lng
no_location_spec(lat,lng)
msg := sprintf("christmas visit policy failed: Can't visit Berlin Christmas market %v without having a location specified",[market_name])
}

no_location_spec(r,_) {
count(trim_space(r)) == 0
}

no_location_spec(_,s) {
count(trim_space(s)) == 0
}

########################################################################## You can also write more ;) ################################################################
