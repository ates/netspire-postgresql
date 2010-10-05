-module(pgsql_util).

-export([format_error/1]).

format_error(<<"01000">>) ->
    {"01000", "warning"};
format_error(<<"0100C">>) ->
    {"0100C", "dynamic result sets returned"};
format_error(<<"01008">>) ->
    {"01008", "implicit zero bit padding"};
format_error(<<"01003">>) ->
    {"01003", "null value eliminated in set function"};
format_error(<<"01007">>) ->
    {"01007", "privilege not granted"};
format_error(<<"01006">>) ->
    {"01006", "privilege not revoked"};
format_error(<<"01004">>) ->
    {"01004", "string data right truncation"};
format_error(<<"01P01">>) ->
    {"01P01", "deprecated feature"};
format_error(<<"02000">>) ->
    {"02000", "no data"};
format_error(<<"02001">>) ->
    {"02001", "no additional dynamic result sets returned"};
format_error(<<"03000">>) ->
    {"03000", "sql statement not yet complete"};
format_error(<<"08000">>) ->
    {"08000", "connection exception"};
format_error(<<"08003">>) ->
    {"08003", "connection does not exist"};
format_error(<<"08006">>) ->
    {"08006", "connection failure"};
format_error(<<"08001">>) ->
    {"08001", "sqlclient unable to establish sqlconnection"};
format_error(<<"08004">>) ->
    {"08004", "sqlserver rejected establishment of sqlconnection"};
format_error(<<"08007">>) ->
    {"08007", "transaction resolution unknown"};
format_error(<<"08P01">>) ->
    {"08P01", "protocol violation"};
format_error(<<"09000">>) ->
    {"09000", "triggered action exception"};
format_error(<<"0A000">>) ->
    {"0A000", "feature not supported"};
format_error(<<"0B000">>) ->
    {"0B000", "invalid transaction initiation"};
format_error(<<"0F000">>) ->
    {"0F000", "locator exception"};
format_error(<<"0F001">>) ->
    {"0F001", "invalid locator specification"};
format_error(<<"0L000">>) ->
    {"0L000", "invalid grantor"};
format_error(<<"0LP01">>) ->
    {"0LP01", "invalid grant operation"};
format_error(<<"0P000">>) ->
    {"0P000", "invalid role specification"};
format_error(<<"20000">>) ->
    {"20000", "case not found"};
format_error(<<"21000">>) ->
    {"21000", "cardinality violation"};
format_error(<<"22000">>) ->
    {"22000", "data exception"};
format_error(<<"2202E">>) ->
    {"2202E", "array subscript error"};
format_error(<<"22021">>) ->
    {"22021", "character not in repertoire"};
format_error(<<"22008">>) ->
    {"22008", "datetime field overflow"};
format_error(<<"22012">>) ->
    {"22012", "division by zero"};
format_error(<<"22005">>) ->
    {"22005", "error in assignment"};
format_error(<<"2200B">>) ->
    {"2200B", "escape character conflict"};
format_error(<<"22022">>) ->
    {"22022", "indicator overflow"};
format_error(<<"22015">>) ->
    {"22015", "interval field overflow"};
format_error(<<"2201E">>) ->
    {"2201E", "invalid argument for logarithm"};
format_error(<<"22014">>) ->
    {"22014", "invalid argument for ntile function"};
format_error(<<"22016">>) ->
    {"22016", "invalid argument for nth_value function"};
format_error(<<"2201F">>) ->
    {"2201F", "invalid argument for power function"};
format_error(<<"2201G">>) ->
    {"2201G", "invalid argument for width bucket function"};
format_error(<<"22018">>) ->
    {"22018", "invalid character value for cast"};
format_error(<<"22007">>) ->
    {"22007", "invalid datetime format"};
format_error(<<"22019">>) ->
    {"22019", "invalid escape character"};
format_error(<<"2200D">>) ->
    {"2200D", "invalid escape octet"};
format_error(<<"22025">>) ->
    {"22025", "invalid escape sequence"};
format_error(<<"22P06">>) ->
    {"22P06", "nonstandard use of escape character"};
format_error(<<"22010">>) ->
    {"22010", "invalid indicator parameter value"};
format_error(<<"22023">>) ->
    {"22023", "invalid parameter value"};
format_error(<<"2201B">>) ->
    {"2201B", "invalid regular expression"};
format_error(<<"2201W">>) ->
    {"2201W", "invalid row count in limit clause"};
format_error(<<"2201X">>) ->
    {"2201X", "invalid row count in result offset clause"};
format_error(<<"22009">>) ->
    {"22009", "invalid time zone displacement value"};
format_error(<<"2200C">>) ->
    {"2200C", "invalid use of escape character"};
format_error(<<"2200G">>) ->
    {"2200G", "most specific type mismatch"};
format_error(<<"22004">>) ->
    {"22004", "null value not allowed"};
format_error(<<"22002">>) ->
    {"22002", "null value no indicator parameter"};
format_error(<<"22003">>) ->
    {"22003", "numeric value out of range"};
format_error(<<"22026">>) ->
    {"22026", "string data length mismatch"};
format_error(<<"22001">>) ->
    {"22001", "string data right truncation"};
format_error(<<"22011">>) ->
    {"22011", "substring error"};
format_error(<<"22027">>) ->
    {"22027", "trim error"};
format_error(<<"22024">>) ->
    {"22024", "unterminated c string"};
format_error(<<"2200F">>) ->
    {"2200F", "zero length character string"};
format_error(<<"22P01">>) ->
    {"22P01", "floating point exception"};
format_error(<<"22P02">>) ->
    {"22P02", "invalid text representation"};
format_error(<<"22P03">>) ->
    {"22P03", "invalid binary representation"};
format_error(<<"22P04">>) ->
    {"22P04", "bad copy file format"};
format_error(<<"22P05">>) ->
    {"22P05", "untranslatable character"};
format_error(<<"2200L">>) ->
    {"2200L", "not an xml document"};
format_error(<<"2200M">>) ->
    {"2200M", "invalid xml document"};
format_error(<<"2200N">>) ->
    {"2200N", "invalid xml content"};
format_error(<<"2200S">>) ->
    {"2200S", "invalid xml comment"};
format_error(<<"2200T">>) ->
    {"2200T", "invalid xml processing instruction"};
format_error(<<"23000">>) ->
    {"23000", "integrity constraint violation"};
format_error(<<"23001">>) ->
    {"23001", "restrict violation"};
format_error(<<"23502">>) ->
    {"23502", "not null violation"};
format_error(<<"23503">>) ->
    {"23503", "foreign key violation"};
format_error(<<"23505">>) ->
    {"23505", "unique violation"};
format_error(<<"23514">>) ->
    {"23514", "check violation"};
format_error(<<"23P01">>) ->
    {"23P01", "exclusion violation"};
format_error(<<"24000">>) ->
    {"24000", "invalid cursor state"};
format_error(<<"25000">>) ->
    {"25000", "invalid transaction state"};
format_error(<<"25001">>) ->
    {"25001", "active sql transaction"};
format_error(<<"25002">>) ->
    {"25002", "branch transaction already active"};
format_error(<<"25008">>) ->
    {"25008", "held cursor requires same isolation level"};
format_error(<<"25003">>) ->
    {"25003", "inappropriate access mode for branch transaction"};
format_error(<<"25004">>) ->
    {"25004", "inappropriate isolation level for branch transaction"};
format_error(<<"25005">>) ->
    {"25005", "no active sql transaction for branch transaction"};
format_error(<<"25006">>) ->
    {"25006", "read only sql transaction"};
format_error(<<"25007">>) ->
    {"25007", "schema and data statement mixing not supported"};
format_error(<<"25P01">>) ->
    {"25P01", "no active sql transaction"};
format_error(<<"25P02">>) ->
    {"25P02", "in failed sql transaction"};
format_error(<<"26000">>) ->
    {"26000", "invalid sql statement name"};
format_error(<<"27000">>) ->
    {"27000", "triggered data change violation"};
format_error(<<"28000">>) ->
    {"28000", "invalid authorization specification"};
format_error(<<"28P01">>) ->
    {"28P01", "invalid password"};
format_error(<<"2B000">>) ->
    {"2B000", "dependent privilege descriptors still exist"};
format_error(<<"2BP01">>) ->
    {"2BP01", "dependent objects still exist"};
format_error(<<"2D000">>) ->
    {"2D000", "invalid transaction termination"};
format_error(<<"2F000">>) ->
    {"2F000", "sql routine exception"};
format_error(<<"2F005">>) ->
    {"2F005", "function executed no return statement"};
format_error(<<"2F002">>) ->
    {"2F002", "modifying sql data not permitted"};
format_error(<<"2F003">>) ->
    {"2F003", "prohibited sql statement attempted"};
format_error(<<"2F004">>) ->
    {"2F004", "reading sql data not permitted"};
format_error(<<"34000">>) ->
    {"34000", "invalid cursor name"};
format_error(<<"38000">>) ->
    {"38000", "external routine exception"};
format_error(<<"38001">>) ->
    {"38001", "containing sql not permitted"};
format_error(<<"38002">>) ->
    {"38002", "modifying sql data not permitted"};
format_error(<<"38003">>) ->
    {"38003", "prohibited sql statement attempted"};
format_error(<<"38004">>) ->
    {"38004", "reading sql data not permitted"};
format_error(<<"39000">>) ->
    {"39000", "external routine invocation exception"};
format_error(<<"39001">>) ->
    {"39001", "invalid sqlstate returned"};
format_error(<<"39004">>) ->
    {"39004", "null value not allowed"};
format_error(<<"39P01">>) ->
    {"39P01", "trigger protocol violated"};
format_error(<<"39P02">>) ->
    {"39P02", "srf protocol violated"};
format_error(<<"3B000">>) ->
    {"3B000", "savepoint exception"};
format_error(<<"3B001">>) ->
    {"3B001", "invalid savepoint specification"};
format_error(<<"3D000">>) ->
    {"3D000", "invalid catalog name"};
format_error(<<"3F000">>) ->
    {"3F000", "invalid schema name"};
format_error(<<"40000">>) ->
    {"40000", "transaction rollback"};
format_error(<<"40002">>) ->
    {"40002", "transaction integrity constraint violation"};
format_error(<<"40001">>) ->
    {"40001", "serialization failure"};
format_error(<<"40003">>) ->
    {"40003", "statement completion unknown"};
format_error(<<"40P01">>) ->
    {"40P01", "deadlock detected"};
format_error(<<"42000">>) ->
    {"42000", "syntax error or access rule violation"};
format_error(<<"42601">>) ->
    {"42601", "syntax error"};
format_error(<<"42501">>) ->
    {"42501", "insufficient privilege"};
format_error(<<"42846">>) ->
    {"42846", "cannot coerce"};
format_error(<<"42803">>) ->
    {"42803", "grouping error"};
format_error(<<"42P20">>) ->
    {"42P20", "windowing error"};
format_error(<<"42P19">>) ->
    {"42P19", "invalid recursion"};
format_error(<<"42830">>) ->
    {"42830", "invalid foreign key"};
format_error(<<"42602">>) ->
    {"42602", "invalid name"};
format_error(<<"42622">>) ->
    {"42622", "name too long"};
format_error(<<"42939">>) ->
    {"42939", "reserved name"};
format_error(<<"42804">>) ->
    {"42804", "datatype mismatch"};
format_error(<<"42P18">>) ->
    {"42P18", "indeterminate datatype"};
format_error(<<"42809">>) ->
    {"42809", "wrong object type"};
format_error(<<"42703">>) ->
    {"42703", "undefined column"};
format_error(<<"42883">>) ->
    {"42883", "undefined function"};
format_error(<<"42P01">>) ->
    {"42P01", "undefined table"};
format_error(<<"42P02">>) ->
    {"42P02", "undefined parameter"};
format_error(<<"42704">>) ->
    {"42704", "undefined object"};
format_error(<<"42701">>) ->
    {"42701", "duplicate column"};
format_error(<<"42P03">>) ->
    {"42P03", "duplicate cursor"};
format_error(<<"42P04">>) ->
    {"42P04", "duplicate database"};
format_error(<<"42723">>) ->
    {"42723", "duplicate function"};
format_error(<<"42P05">>) ->
    {"42P05", "duplicate prepared statement"};
format_error(<<"42P06">>) ->
    {"42P06", "duplicate schema"};
format_error(<<"42P07">>) ->
    {"42P07", "duplicate table"};
format_error(<<"42712">>) ->
    {"42712", "duplicate alias"};
format_error(<<"42710">>) ->
    {"42710", "duplicate object"};
format_error(<<"42702">>) ->
    {"42702", "ambiguous column"};
format_error(<<"42725">>) ->
    {"42725", "ambiguous function"};
format_error(<<"42P08">>) ->
    {"42P08", "ambiguous parameter"};
format_error(<<"42P09">>) ->
    {"42P09", "ambiguous alias"};
format_error(<<"42P10">>) ->
    {"42P10", "invalid column reference"};
format_error(<<"42611">>) ->
    {"42611", "invalid column definition"};
format_error(<<"42P11">>) ->
    {"42P11", "invalid cursor definition"};
format_error(<<"42P12">>) ->
    {"42P12", "invalid database definition"};
format_error(<<"42P13">>) ->
    {"42P13", "invalid function definition"};
format_error(<<"42P14">>) ->
    {"42P14", "invalid prepared statement definition"};
format_error(<<"42P15">>) ->
    {"42P15", "invalid schema definition"};
format_error(<<"42P16">>) ->
    {"42P16", "invalid table definition"};
format_error(<<"42P17">>) ->
    {"42P17", "invalid object definition"};
format_error(<<"44000">>) ->
    {"44000", "with check option violation"};
format_error(<<"53000">>) ->
    {"53000", "insufficient resources"};
format_error(<<"53100">>) ->
    {"53100", "disk full"};
format_error(<<"53200">>) ->
    {"53200", "out of memory"};
format_error(<<"53300">>) ->
    {"53300", "too many connections"};
format_error(<<"54000">>) ->
    {"54000", "program limit exceeded"};
format_error(<<"54001">>) ->
    {"54001", "statement too complex"};
format_error(<<"54011">>) ->
    {"54011", "too many columns"};
format_error(<<"54023">>) ->
    {"54023", "too many arguments"};
format_error(<<"55000">>) ->
    {"55000", "object not in prerequisite state"};
format_error(<<"55006">>) ->
    {"55006", "object in use"};
format_error(<<"55P02">>) ->
    {"55P02", "cant change runtime param"};
format_error(<<"55P03">>) ->
    {"55P03", "lock not available"};
format_error(<<"57000">>) ->
    {"57000", "operator intervention"};
format_error(<<"57014">>) ->
    {"57014", "query canceled"};
format_error(<<"57P01">>) ->
    {"57P01", "admin shutdown"};
format_error(<<"57P02">>) ->
    {"57P02", "crash shutdown"};
format_error(<<"57P03">>) ->
    {"57P03", "cannot connect now"};
format_error(<<"58030">>) ->
    {"58030", "io error"};
format_error(<<"58P01">>) ->
    {"58P01", "undefined file"};
format_error(<<"58P02">>) ->
    {"58P02", "duplicate file"};
format_error(<<"F0000">>) ->
    {"F0000", "config file error"};
format_error(<<"F0001">>) ->
    {"F0001", "lock file exists"};
format_error(<<"P0000">>) ->
    {"P0000", "plpgsql error"};
format_error(<<"P0001">>) ->
    {"P0001", "raise exception"};
format_error(<<"P0002">>) ->
    {"P0002", "no data found"};
format_error(<<"P0003">>) ->
    {"P0003", "too many rows"};
format_error(<<"XX000">>) ->
    {"XX000", "internal error"};
format_error(<<"XX001">>) ->
    {"XX001", "data corrupted"};
format_error(<<"XX002">>) ->
    {"XX002", "index corrupted"};
format_error(Code) ->
    {binary_to_list(Code), "unknown error code"}.
