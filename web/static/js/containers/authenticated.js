import React        from 'react';
import { connect }  from 'react-redux';
import { routeActions } from 'react-router-redux';

class AuthenticatedUser extends React.Component {
  componenetDidMount() {
    const { dispatch, currentUser } = this.props;

    if (localStroage.getItem('phoenixAuthToken')) {
      dispatch(Actions.currentUser());
    } else {
      dispatch(routeActions.push('/sign_up'));
    }
  }

  render() {

  }
}

const mapStateToProps = (state) => ({
  current_user: state.session.currentUser,
});

export default connect(mapStateToProps)(AuthenticatedContainer);
