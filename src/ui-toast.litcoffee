#ui-toast
Yummy! A pop up toast message. This shows the contained content in the lower
left. There is a bit of styling to help you get white text on the black
background of the toast without trying too hard.


    Polymer 'ui-toast',

##Events
###hidden

##Attributes and Change Handlers
###timeout
Number of milliseconds to show the toast, defaults to 3000 if unset.

      timeout: 3000
      timeoutChanged: ->
        @timeout = Number(@timeout)

##Methods
###show
This makes toast appear.

      show: ->
        @$.backdrop.classList.remove 'fadeout'
        @async @hide, null, @timeout

###hide
Visual transition to remove the toast.

      hide: ->
        @$.backdrop.classList.add 'fadeout'

##Event Handlers
Touch it and it goes away.

      onClick: (evt) ->
        @hide()
        evt.stopPropagation()

##Polymer Lifecycle

      created: ->

      ready: ->

      attached: ->
        @hide()

      domReady: ->

      detached: ->
