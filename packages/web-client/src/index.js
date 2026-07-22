import React from 'react';
import dayjs from 'dayjs';

export function App() {
  return React.createElement('div', null, `Rendered at ${dayjs().toISOString()}`);
}
