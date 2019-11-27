#lang at-exp lost-library/post

@(require map-picts pict)

;TODO: Fix the inevitable circularity of post links
@(require racket/runtime-path)
@(define-runtime-path here ".")

@(define lafayette
  (marker #(30.230188 -92.010391) 
          "Louisiana"
          (color 0 0 0)))

@(define riyadh
  (marker #(24.687246 46.752999) 
          "Riyadh"
          (color 0 0 0)))

@(define atlantic1
  (marker
   #(44.930148 -21.643282)
   "100s->"
   (color 50 0 0)))

@(define atlantic2
  (marker
   #(10.930148 -40.643282)
   "<-1000s"
   (color 50 0 0)))



@paras{
@(preview-img
   (map-pict 300 300
             #:position
             #(20.930148 10.0)
             #:zoom 1
             lafayette
             riyadh
             (list
               lafayette
               atlantic2
               riyadh
               atlantic1
               lafayette)))
My father had two unspoken rules about his books: 1) every time you go to a bookstore, you must leave with at least one book; and 2) you must never, ever get rid of books. His collection had begun before I was born and was growing until just weeks before he passed away when I was 32. To give you an idea of just how seriously @(span) my father took his second rule:

My family moved from Louisiana to Saudi Arabia in 1988, and those books followed us across the Atlantic -- 7,000 miles there, and 7,000 miles back -- thousands more books on the return trip 12 years later.  They followed us through half a dozen houses.  A few years here, a few years there. 
@style/inline{
  blockquote.fancy:before {
    content: none;
  }
}
@blockquote[class: "fancy"]{
  @b{The houses changed, but the library was constant.}
}
You'd think that, at some point, someone would have asked him why he needed to keep every book.  I never did though.  If I had to guess, his books were simply a part of him -- a form of @b{distributed cognition}.  He could look at a book and tell you the meta-story of where he got it, when, and why -- as well as the story actually written in the book.  The physical books were his way of accessing the stories of his own life -- in ways that only he knew.  I think that, for him, getting rid of a book would have been like getting rid of part of his mind, deleting a link to a cluster of memories.

The moment he died, this organizational system for his mind became nothing more than books.  

@blockquote[class: "fancy"]{
  @b{We might have kept that library if things had been different.}
}
But the company that had employed him for over a decade failed to execute on his life insurance policy, sparking a legal battle that my mother is, years later, still fighting.  She was not able to be solely responsible for the mortage on what was supposed to be their retirement home in Montana.  In a different universe, those books that had traveled the world together might still be all in one place.

Instead, she spent months selling the collection -- carting books by the boxload to Goodwills and listing them on Ebay.  At a few cents per item, the entire collection totalled to perhaps a few hundred dollars.  Selling them wasn't just about money, though.  In retrospect, it seemed somehow fitting for her to scatter them to the wind -- like ashes.  

I like to wonder sometimes where they went and who reads them now.  

As far as I know, my father didn't write much.  He collected the writings of others -- filtering them by an algorithm that I don't understand, and I'm not sure if he was consciously aware of.  Books flowed into our lives, onto the shelves.   Then they flowed back into the world.   

We take 16 breaths per minute -- and an average of 672,768,000 per lifetime.  But in a way, we also take just single breath in a lifetime: 

@blockquote[class: "fancy"]{
	@centered{
	  @paras{
	    @b{We inhale stories of our world.}
	    @b{We learn how to be heros our own stories.}
	    @b{Then, we exhale.}
	  }
	}
}

It was by reading portions of that diverse, sprawling, eclectic library that my early mind took shape -- a mind just beginning to inhale.  As I continue that slow inhale, I've begun to realize the value of writing -- a way to make sense of the stories I read, hear, see, remember, and enact.  

I write down the ones that matter -- filtering by an algorithm I don't understand and am not fully conscious of.  

@(hr)
@(h4 "Next Stories")
@(post-card 
   (file->page #:name "Story/Meta Story"
     (build-path here "story-meta-story.rkt")))

}

