<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
		
		<div class="container">
			<h3 class="text-center">Your todos</h3>
			
			<table class="table table-bordered table-hover">
				<caption>Your todos are</caption>
				<thead>
					<tr>
						<th>Description</th>
						<th>Target Dagte</th>
						<th>Is it Done?</th>
						<th></th>
					</tr>
				</thead>
				
				<tbody>
				
					<c:forEach items="${todos}"	var="todo">
						<tr>
							<td>${todo.desc}</td>
							<td><fmt:formatDate value="${todo.targetDate }" pattern="dd/MM/yyyy" /></td>
							<td>${todo.done }</td>
							<td>
								<a type="button" class="btn btn-warning" href="/update-todo?id=${todo.id}">Update</a>
								<a type="button" class="btn btn-danger" href="/delete-todo?id=${todo.id}">Delete</a>
							</td>
						</tr>
					</c:forEach>		
					
				</tbody>
			</table>
			<br>
			
			<a href="add-todo">Add Todo</a>
		</div>
<%@ include file="common/footer.jspf" %>
		