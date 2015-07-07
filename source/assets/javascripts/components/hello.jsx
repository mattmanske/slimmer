var MyComponent = React.createClass({
    render: function(){
        return (
            <h1>Hello, from a component!</h1>
        );
    }
});

React.render(<MyComponent name="Handsome" />, document.getElementById('myDiv'));
