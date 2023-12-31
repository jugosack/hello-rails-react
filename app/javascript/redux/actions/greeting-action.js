/* eslint-disable import/prefer-default-export */
import { greetingActions } from '../slice/greetingSlice';

export const fetchGreetingData = () => async (dispatch) => {
  const response = await fetch('http://localhost:3000/api/v1/messages');
  const data = await response.json();

  data.forEach((el) => {
    const greeting = el.text;
    dispatch(greetingActions.addGreeting(greeting));
  });
};
