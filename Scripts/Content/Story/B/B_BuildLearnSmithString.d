func string B_BuildLearnSmithString (var int waffe, var int LP_Cost)
{
	var string msg;

	msg	= ConcatStrings(HlpSmith_GetName(waffe),	"(Obr: ");
	msg = ConcatStrings(msg,	IntToString(HlpSmith_GetDamage(waffe)));
	msg = ConcatStrings(msg,	", Si³a: ");
	msg = ConcatStrings(msg,	IntToString(HlpSmith_GetCond(waffe)));
	msg = ConcatStrings(msg,	") - ");
	msg = ConcatStrings(msg,	IntToString(LP_Cost));
	msg = ConcatStrings(msg,	"PN");

	return msg;
};
