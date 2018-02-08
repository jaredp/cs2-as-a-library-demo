import React from 'react'
import coffeescript from 'coffeescript'

export default class RC extends React.Component
    constructor: (props) ->
        super(props)
        @state = {code: "# hello world!"}

    render: ->
        <div>
            <div>
                <textarea value={@state.code} onChange={(e) => @update(e)} />
            </div>
            <div>
                <code>
                    {
                        try
                            coffeescript.compile @state.code
                        catch
                            "[failed to compile]"
                    }
                </code>
            </div>
            <p>Hello from the other side!</p>
        </div>

    update: (e) ->
        this.setState code: e.target.value
