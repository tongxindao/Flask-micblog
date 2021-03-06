class Route:
    '''
    route decorator
    '''

    def __init__(self, app):

        # introduction app (framework) instance
        self.app = app

    def __call__(self, url, **options):
        '''
        implement call method
        '''

        # if methods parameter not define, then init just support GET method
        if 'methods' not in options:
            options['methods'] = ['GET']

        def decorator(f):

            # call app internal add_url_rule add rule
            self.app.add_url_rule(url, f, 'route', **options)
            return f

        return decorator
