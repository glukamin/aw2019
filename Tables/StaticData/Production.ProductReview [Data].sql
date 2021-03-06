-- BEGINNING TRANSACTION DATA
PRINT 'Beginning transaction DATA'
BEGIN TRANSACTION _DATA_
GO
SET NOEXEC OFF
SET ANSI_WARNINGS ON
SET XACT_ABORT ON
SET IMPLICIT_TRANSACTIONS OFF
SET ARITHABORT ON
SET NOCOUNT ON
SET QUOTED_IDENTIFIER ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
GO

-- Check Constraint Disable's for Table: [Production].[ProductReview]
Print 'Check Constraint Disable''s for Table: [Production].[ProductReview]'
ALTER TABLE [Production].[ProductReview] NOCHECK CONSTRAINT [CK_ProductReview_Rating]

-- Foreign Key Constraint Disable's for Table: [Production].[ProductReview]
Print 'Foreign Key Constraint Disable''s for Table: [Production].[ProductReview]'
ALTER TABLE [Production].[ProductReview] NOCHECK CONSTRAINT [FK_ProductReview_Product_ProductID]


-- Insert scripts for table: ProductReview
PRINT 'Inserting rows into table: ProductReview'
SET IDENTITY_INSERT [Production].[ProductReview] ON

INSERT INTO [Production].[ProductReview] ([ProductReviewID], [ProductID], [ReviewerName], [ReviewDate], [EmailAddress], [Rating], [Comments], [ModifiedDate]) VALUES (1, 709, N'John Smith', '20130918 00:00:00.000', N'john@fourthcoffee.com', 5, N'I can''t believe I''m singing the praises of a pair of socks, but I just came back from a grueling
3-day ride and these socks really helped make the trip a blast. They''re lightweight yet really cushioned my feet all day. 
The reinforced toe is nearly bullet-proof and I didn''t experience any problems with rubbing or blisters like I have with
other brands. I know it sounds silly, but it''s always the little stuff (like comfortable feet) that makes or breaks a long trip.
I won''t go on another trip without them!', '20130918 00:00:00.000')
INSERT INTO [Production].[ProductReview] ([ProductReviewID], [ProductID], [ReviewerName], [ReviewDate], [EmailAddress], [Rating], [Comments], [ModifiedDate]) VALUES (2, 937, N'David', '20131113 00:00:00.000', N'david@graphicdesigninstitute.com', 4, N'A little on the heavy side, but overall the entry/exit is easy in all conditions. I''ve used these pedals for 
more than 3 years and I''ve never had a problem. Cleanup is easy. Mud and sand don''t get trapped. I would like 
them even better if there was a weight reduction. Maybe in the next design. Still, I would recommend them to a friend.', '20131113 00:00:00.000')
INSERT INTO [Production].[ProductReview] ([ProductReviewID], [ProductID], [ReviewerName], [ReviewDate], [EmailAddress], [Rating], [Comments], [ModifiedDate]) VALUES (3, 937, N'Jill', '20131115 00:00:00.000', N'jill@margiestravel.com', 2, N'Maybe it''s just because I''m new to mountain biking, but I had a terrible time getting use
to these pedals. In my first outing, I wiped out trying to release my foot. Any suggestions on
ways I can adjust the pedals, or is it just a learning curve thing?', '20131115 00:00:00.000')
INSERT INTO [Production].[ProductReview] ([ProductReviewID], [ProductID], [ReviewerName], [ReviewDate], [EmailAddress], [Rating], [Comments], [ModifiedDate]) VALUES (4, 798, N'Laura Norman', '20131115 00:00:00.000', N'laura@treyresearch.net', 5, N'The Road-550-W from Adventure Works Cycles is everything it''s advertised to be. Finally, a quality bike that
is actually built for a woman and provides control and comfort in one neat package. The top tube is shorter, the suspension is weight-tuned and there''s a much shorter reach to the brake
levers. All this adds up to a great mountain bike that is sure to accommodate any woman''s anatomy. In addition to getting the size right, the saddle is incredibly comfortable. 
Attention to detail is apparent in every aspect from the frame finish to the careful design of each component. Each component is a solid performer without any fluff. 
The designers clearly did their homework and thought about size, weight, and funtionality throughout. And at less than 19 pounds, the bike is manageable for even the most petite cyclist.

We had 5 riders take the bike out for a spin and really put it to the test. The results were consistent and very positive. Our testers loved the manuverability 
and control they had with the redesigned frame on the 550-W. A definite improvement over the 2002 design. Four out of five testers listed quick handling
and responsivness were the key elements they noticed. Technical climbing and on the flats, the bike just cruises through the rough. Tight corners and obstacles were handled effortlessly. The fifth tester was more impressed with the smooth ride. The heavy-duty shocks absorbed even the worst bumps and provided a soft ride on all but the 
nastiest trails and biggest drops. The shifting was rated superb and typical of what we''ve come to expect from Adventure Works Cycles. On descents, the bike handled flawlessly and tracked very well. The bike is well balanced front-to-rear and frame flex was minimal. In particular, the testers
noted that the brake system had a unique combination of power and modulation.  While some brake setups can be overly touchy, these brakes had a good
amount of power, but also a good feel that allows you to apply as little or as much braking power as is needed. Second is their short break-in period. We found that they tend to break-in well before
the end of the first ride; while others take two to three rides (or more) to come to full power. 

On the negative side, the pedals were not quite up to our tester''s standards. 
Just for fun, we experimented with routine maintenance tasks. Overall we found most operations to be straight forward and easy to complete. The only exception was replacing the front wheel. The maintenance manual that comes
with the bike say to install the front wheel with the axle quick release or bolt, then compress the fork a few times before fastening and tightening the two quick-release mechanisms on the bottom of the dropouts. This is to seat the axle in the dropouts, and if you do not
do this, the axle will become seated after you tightened the two bottom quick releases, which will then become loose. It''s better to test the tightness carefully or you may notice that the two bottom quick releases have come loose enough to fall completely open. And that''s something you don''t want to experience
while out on the road! 

The Road-550-W frame is available in a variety of sizes and colors and has the same durable, high-quality aluminum that AWC is known for. At a MSRP of just under $1125.00, it''s comparable in price to its closest competitors and
we think that after a test drive you''l find the quality and performance above and beyond . You''ll have a grin on your face and be itching to get out on the road for more. While designed for serious road racing, the Road-550-W would be an excellent choice for just about any terrain and 
any level of experience. It''s a huge step in the right direction for female cyclists and well worth your consideration and hard-earned money.', '20131115 00:00:00.000')
GO

SET IDENTITY_INSERT [Production].[ProductReview] OFF


-- Foreign Key Constraint Enable's for Table: [Production].[ProductReview]
Print 'Foreign Key Constraint Enable''s for Table: [Production].[ProductReview]'
ALTER TABLE [Production].[ProductReview] CHECK CONSTRAINT [FK_ProductReview_Product_ProductID]

-- Check Constraint Enable's for Table: [Production].[ProductReview]
Print 'Check Constraint Enable''s for Table: [Production].[ProductReview]'
ALTER TABLE [Production].[ProductReview] CHECK CONSTRAINT [CK_ProductReview_Rating]


-- COMMITTING TRANSACTION DATA
PRINT 'Committing transaction DATA'
IF @@TRANCOUNT>0
	COMMIT TRANSACTION _DATA_
GO

SET NOEXEC OFF
GO

SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_WARNINGS ON
SET NOCOUNT ON
SET XACT_ABORT ON
GO
