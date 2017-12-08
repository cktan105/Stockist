<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<script>
$(document).ready(function() {
$( "#target1" ).focus(function() {
	$("#error1").html("");
});
$( "#target2" ).focus(function() {
	$("#error2").html("");
});
$( "#target3" ).focus(function() {
	$("#error3").html("");
});
$( "#target4" ).focus(function() {
	$("#error4").html("");
});
$( "#target5" ).focus(function() {
	$("#error5").html("");
});
});

</script>
<h3>Edit Supplier page</h3>

<div class="col-md-4">
	<form:form method="POST" modelAttribute="supplier"
		action="${pageContext.request.contextPath}/admin/supplier/edit/${supplier.supplierId}">

		<div class="form-group">

			<spring:message code="fieldLabel.supplierId" />
			<form:input path="supplierId" class="form-control" readonly="true" />

		</div>

		<div class="form-group">

			<spring:message code="fieldLabel.supplierName" />
			<form:input id="target1" path="supplierName" class="form-control" />
			<form:errors id="error1" path="supplierName" cssStyle="color: red;" />


		</div>
		<div class="form-group">
			<spring:message code="fieldLabel.contactName" />
			<form:input id="target2" path="contactName" class="form-control target" />
			<form:errors id="error2" path="contactName" cssStyle="color: red;" />
		</div>
		<div class="form-group">
			<spring:message code="fieldLabel.phoneNo" />
			<form:input id="target3" path="phoneNumber" type="number" class="form-control target" />
			<form:errors id="error3" path="phoneNumber" cssStyle="color: red;" />
		</div>
		<div class="form-group">
			<spring:message code="fieldLabel.email" />
			<form:input id="target4" path="email" type="email" class="form-control target" />
			<form:errors id="error4" path="email" cssStyle="color: red;" />
		</div>

		<div class="form-group">
			<spring:message code="fieldLabel.website" />
			<form:input id="target5" path="website" class="form-control target" />
			<form:errors id="error5" path="website" cssStyle="color: red;" />
		</div>

		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-primary">Update</button>
		</div>



	</form:form>
</div>



