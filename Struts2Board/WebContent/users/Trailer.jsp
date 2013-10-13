<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<sx:head parseContent="true" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="../dist/css/bootstrap.min.css"
	type="text/css" />

<title>Trailer</title>
<script type="text/javascript">
	//<![CDATA[
	function trailer() {
		var form = document.getElementById("TrailerForm");
		//TODO
		form.submit();
	}
	function search() {

	}

	//]]>
</script>
</head>

<span class="glyphicon glyphicon-search"></span>
<body>
	<script src="http://code.jquery.com/jquery.js"></script>
	<script src="dist/js/bootstrap.min.js"></script>

	<div id="wrap">

		<div id="container">
			<div id="content" style="height: 800px;">

				<h1>Trailer</h1>
				<form id="TrailerForm" action="Trailer.action" method="post"
					onsubmit="trailer();return false;">
					<s:fielderror />
					<table>
						<tr>
							<td>Trailer</td>
							<td><input type="text" name="trailer" style="width: 150px;" /></td>
						</tr>
						<tr>
							<td>Number</td>
							<td><input type="text" name="number" style="width: 150px;" /></td>
							<td>Oper Cost/Mile</td>
							<td><input type="text" name="opercost" style="width: 150px;" /></td>
							<td>Notes</td>
							<td><input type="text" name="notes" style="width: 150px;" /></td>
							
						</tr>
						<tr>
							<td>Owner/Pay To</td>
							<td><input type="text" name="ownerandpayto"
								style="width: 150px;" /></td>
							<td></td>
							<td></td>
							<td>Assigned Pup</td>
							<td><input type="text" name="assignedpup"
								style="width: 150px;" /></td>
						</tr>
						<tr>
							<td>ILT SCAC</td>
							<td><input type="text" name="iltscac" style="width: 150px;" /></td>
							<td>ILT</td>
							<td><input type="text" name="ilt" style="width: 150px;" /></td>
							<td>Acctg Type</td>
							<td><input type="text" name="acctgtype"
								style="width: 150px;" /></td>
						</tr>
						<tr>
							<td>Company ID</td>
							<td><input type="text" name="companyid"
								style="width: 150px;" /></td>
							<td>Pits</td>
							<td><input type="text" name="pits" style="width: 150px;" /></td>
						</tr>
						<tr>
							<td>City</td>
							<td><input type="text" name="city" style="width: 150px;" /></td>
						</tr>


					</table>
					<table>
						<tr>
							<td>
								<table>
									<tr>
										<td colspan="3"><h2>Purchase Information</h2></td>
									</tr>
									<tr>
										<td>Acquired</td>
										<td><sx:datetimepicker name="datetime" displayWeeks="5"
												id="datetime" /></td>
										<td><input type="text" value="new" name="brandnew"
											style="width: 100px;" /></td>
									</tr>
									<tr>
										<td>Orig. Cost</td>
										<td><input type="text" name="origcost"
											style="width: 150px;" /></td>
									</tr>
									<tr>
										<td>VIN</td>
										<td colspan="2"><input type="text" name=vin
											style="width: 250px;" /></td>
									</tr>
									<tr>
										<td>Email</td>
										<td colspan="2"><input type="text" name="email"
											style="width: 250px;" /></td>
									</tr>
									<tr></tr>
								</table>
							</td>
							<td width="30px"></td>
							<td>
								<table>
									<tr>
										<td colspan="2"><h2>Status</h2></td>
									</tr>
									<tr>
										<td>Hub</td>
										<td><input type="text" name="Hub" style="width: 150px;" /></td>
									</tr>
									<tr>
										<td>Wash Status</td>
										<td><input type="text" name="washstatus"
											style="width: 150px;" /></td>
									</tr>
									<tr>
										<td>Status</td>
										<td><input type="text" name="status"
											style="width: 150px;" /></td>
									</tr>
									<tr>
										<td>In Service</td>
										<td><sx:datetimepicker name="inservicetime"
												displayWeeks="5" id="datetime" /></td>
									</tr>
									<tr>
										<td>Out of Service</td>
										<td><sx:datetimepicker name="outofservicetime"
												displayWeeks="5" id="datetime" /></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td colspan="3">GPS Description <input type="text"
								name="status" style="width: 500px;" /></td>
						</tr>
					</table>
					<table>
						<tr>
							<td>
								<table>
									<tr>
										<td colspan="4">
											<h2>Vehicle Details</h2>
										</td>
									</tr>
									<tr>
										<td colspan="4">Yt/Make/Model <input type="text"
											name="vehyear" style="width: 150px;" /> <input type="text"
											name="vehmake" style="width: 150px;" /> <input type="text"
											name="vehmodel" style="width: 150px;" /></td>
									</tr>
									<tr>
										<td>Axles</td>
										<td><input type="text" name="axles" style="width: 150px;" />
										</td>
										<td>Gross</td>
										<td><input type="text" name="gross" style="width: 150px;" /></td>
									</tr>
									<tr>
										<td>Height</td>
										<td><input type="text" name="height"
											style="width: 150px;" /></td>
										<td>Nose/KP</td>
										<td><input type="text" name="nosekp"
											style="width: 150px;" /></td>
									</tr>
									<tr>
										<td>Weight</td>
										<td><input type="text" name="weight"
											style="width: 150px;" /></td>
										<td>KPin/Axle1</td>
										<td><input type="text" name="kpinaxle1"
											style="width: 150px;" /></td>
									</tr>
									<tr>
										<td>Tare</td>
										<td><input type="text" name="tare" style="width: 150px;" />
										</td>
										<td>Axle1/Axle2</td>
										<td><input type="text" name="axle12"
											style="width: 150px;" /></td>
									</tr>
									<tr>
										<td>HPG</td>
										<td><input type="text" name="hpg" style="width: 150px;" />
										</td>
										<td>Axle2/Axle3</td>
										<td><input type="text" name="axle23"
											style="width: 150px;" /></td>
									</tr>
									<tr>
										<td>Width</td>
										<td><input type="text" name="width" style="width: 150px;" />
										</td>
										<td>Axle3/Axle4</td>
										<td><input type="text" name="axle34"
											style="width: 150px;" /></td>
									</tr>
									<tr>
										<td>Length</td>
										<td><input type="text" name="length"
											style="width: 150px;" /></td>
										<td>Axle4/Axle5</td>
										<td><input type="text" name="axle45"
											style="width: 150px;" /></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td>Last Axle/Rear</td>
										<td><input type="text" name="lastaxle"
											style="width: 150px;" /></td>
									</tr>
									<tr>
										<td>License#</td>
										<td><input type="text" name="license"
											style="width: 150px;" /></td>
										<td>state</td>
										<td><input type="text" name="state" style="width: 150px;" /></td>
									</tr>
								</table>
							</td>
							<td width="30px"></td>
							<td>
								<table>
									<tr>
										<td colspan="2">
											<h2>Comments</h2>
										</td>
									</tr>
									<tr>
										<td>Trl Misc 1</td>
										<td><input type="text" name="trlmisc1"
											style="width: 250px;" /></td>
									</tr>
									<tr>
										<td>Trl Misc 2</td>
										<td><input type="text" name="trlmisc2"
											style="width: 250px;" /></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
					<table>
						<tr>
							<td>
							<table>
							<tr>
							<td>
							
							</td>
							</tr>
							</table>
							</td>
						</tr>
						<tr>
							<td>
							<table>
							<tr>
							</tr>
							</table>
							</td>
						</tr>
						<tr>
							<td>
							<table>
							<tr>
							</tr>
							</table>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>

</body>
</html>