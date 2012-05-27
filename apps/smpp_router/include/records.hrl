-record(
	link,
	{
		id,
		connection_data
	}
).

-record(
	connection_data,
	{
		ip :: tuple(),
		port :: pos_integer(),
		system_id :: list(),
		password :: list(),
		bind_type::'undefined'|'transmitter'|'transceiver'|'receiver'
		%% here could be other options such as destination address ton npi etc
	}
).