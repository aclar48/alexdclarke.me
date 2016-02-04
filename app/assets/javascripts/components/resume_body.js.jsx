var ResumeBody = React.createClass({
  propTypes: {
    name: React.PropTypes.node,
    email: React.PropTypes.node,
    github: React.PropTypes.node,
    website: React.PropTypes.string
  },

  render: function() {
    return (
      <div class="resume-body">
        <div>Name: {this.props.name}</div>
        <div>Email: {this.props.email}</div>
        <div>Github: {this.props.github}</div>
        <div>Website: {this.props.website}</div>
      </div>
    );
  }
});
