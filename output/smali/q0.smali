.class public Lq0;
.super Lt0;
.source "SourceFile"

# interfaces
.implements Lo8;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq0$f;,
        Lq0$c;,
        Lq0$d;,
        Lq0$e;,
        Lq0$b;,
        Lq0$g;
    }
.end annotation


# instance fields
.field public t:Lq0$c;

.field public u:Lq0$g;

.field public v:I

.field public w:I

.field public x:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lq0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lq0;-><init>(Lq0$c;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Lq0$c;Landroid/content/res/Resources;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lt0;-><init>(Lt0$a;)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lq0;->v:I

    .line 4
    iput v0, p0, Lq0;->w:I

    .line 5
    new-instance v0, Lq0$c;

    invoke-direct {v0, p1, p0, p2}, Lq0$c;-><init>(Lq0$c;Lq0;Landroid/content/res/Resources;)V

    .line 6
    invoke-super {p0, v0}, Lt0;->e(Lr0$c;)V

    .line 7
    iput-object v0, p0, Lq0;->t:Lq0$c;

    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lq0;->onStateChange([I)Z

    .line 9
    invoke-virtual {p0}, Lq0;->jumpToCurrentState()V

    return-void
.end method

.method public static g(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lq0;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "animated-selector"

    .line 2
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 3
    new-instance v4, Lq0;

    const/4 v5, 0x0

    .line 4
    invoke-direct {v4, v5, v5}, Lq0;-><init>(Lq0$c;Landroid/content/res/Resources;)V

    .line 5
    sget-object v6, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat:[I

    invoke-static {v0, v3, v2, v6}, Lc8;->j(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 6
    sget v7, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_visible:I

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {v4, v7, v8}, Lq0;->setVisible(ZZ)Z

    .line 7
    iget-object v7, v4, Lq0;->t:Lq0$c;

    .line 8
    iget v9, v7, Lr0$c;->d:I

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v10

    or-int/2addr v9, v10

    iput v9, v7, Lr0$c;->d:I

    .line 9
    sget v9, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_variablePadding:I

    iget-boolean v10, v7, Lr0$c;->i:Z

    .line 10
    invoke-virtual {v6, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 11
    iput-boolean v9, v7, Lr0$c;->i:Z

    .line 12
    sget v9, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_constantSize:I

    iget-boolean v10, v7, Lr0$c;->l:Z

    .line 13
    invoke-virtual {v6, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 14
    iput-boolean v9, v7, Lr0$c;->l:Z

    .line 15
    sget v9, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_enterFadeDuration:I

    iget v10, v7, Lr0$c;->A:I

    .line 16
    invoke-virtual {v6, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 17
    iput v9, v7, Lr0$c;->A:I

    .line 18
    sget v9, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_exitFadeDuration:I

    iget v10, v7, Lr0$c;->B:I

    .line 19
    invoke-virtual {v6, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 20
    iput v9, v7, Lr0$c;->B:I

    .line 21
    sget v9, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_dither:I

    iget-boolean v7, v7, Lr0$c;->x:Z

    invoke-virtual {v6, v9, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {v4, v7}, Lr0;->setDither(Z)V

    .line 22
    iget-object v7, v4, Lr0;->e:Lr0$c;

    invoke-virtual {v7, v0}, Lr0$c;->f(Landroid/content/res/Resources;)V

    .line 23
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    add-int/2addr v6, v8

    move-object/from16 v9, p0

    move-object v7, v0

    .line 25
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    if-eq v10, v8, :cond_16

    .line 26
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-ge v11, v6, :cond_0

    const/4 v12, 0x3

    if-eq v10, v12, :cond_16

    :cond_0
    const/4 v12, 0x2

    if-eq v10, v12, :cond_1

    goto :goto_0

    :cond_1
    if-le v11, v6, :cond_2

    goto :goto_0

    .line 27
    :cond_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "item"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v10, -0x1

    const/4 v11, 0x0

    if-eqz v8, :cond_c

    .line 28
    sget-object v8, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableItem:[I

    invoke-static {v7, v3, v2, v8}, Lc8;->j(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 29
    sget v12, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableItem_android_id:I

    invoke-virtual {v8, v12, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 30
    sget v13, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableItem_android_drawable:I

    .line 31
    invoke-virtual {v8, v13, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    if-lez v10, :cond_3

    .line 32
    invoke-static {}, Ls2;->d()Ls2;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Ls2;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 33
    :cond_3
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v8

    .line 35
    new-array v10, v8, [I

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v8, :cond_6

    .line 36
    invoke-interface {v2, v14}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v15

    if-eqz v15, :cond_5

    const v11, 0x10100d0

    if-eq v15, v11, :cond_5

    const v11, 0x1010199

    if-eq v15, v11, :cond_5

    add-int/lit8 v11, v13, 0x1

    const/4 v0, 0x0

    .line 37
    invoke-interface {v2, v14, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v17

    if-eqz v17, :cond_4

    goto :goto_2

    :cond_4
    neg-int v15, v15

    .line 38
    :goto_2
    aput v15, v10, v13

    move v13, v11

    :cond_5
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p1

    const/4 v11, 0x0

    goto :goto_1

    .line 39
    :cond_6
    invoke-static {v10, v13}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v0

    const-string v8, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez v5, :cond_a

    .line 40
    :goto_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v10, 0x4

    if-ne v5, v10, :cond_7

    goto :goto_3

    :cond_7
    const/4 v10, 0x2

    if-ne v5, v10, :cond_9

    .line 41
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v10, "vector"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 42
    invoke-static/range {p1 .. p4}, Lti;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lti;

    move-result-object v5

    goto :goto_4

    .line 43
    :cond_8
    invoke-static/range {p1 .. p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_4

    .line 44
    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-static {v1, v2, v8}, Ljo;->v(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_4
    if-eqz v5, :cond_b

    .line 46
    iget-object v8, v4, Lq0;->t:Lq0$c;

    .line 47
    invoke-virtual {v8, v5}, Lr0$c;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v5

    .line 48
    iget-object v10, v8, Lt0$a;->J:[[I

    aput-object v0, v10, v5

    .line 49
    iget-object v0, v8, Lq0$c;->L:Ln4;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Ln4;->h(ILjava/lang/Object;)V

    goto/16 :goto_a

    .line 50
    :cond_b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    invoke-static {v1, v2, v8}, Ljo;->v(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_c
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "transition"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 53
    sget-object v0, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition:[I

    invoke-static {v7, v3, v2, v0}, Lc8;->j(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    sget v5, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition_android_fromId:I

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 55
    sget v8, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition_android_toId:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 56
    sget v11, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition_android_drawable:I

    invoke-virtual {v0, v11, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    if-lez v11, :cond_d

    .line 57
    invoke-static {}, Ls2;->d()Ls2;

    move-result-object v12

    invoke-virtual {v12, v9, v11}, Ls2;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto :goto_5

    :cond_d
    const/4 v11, 0x0

    .line 58
    :goto_5
    sget v12, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition_android_reversible:I

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const-string v0, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez v11, :cond_11

    .line 60
    :goto_6
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    const/4 v13, 0x4

    if-ne v11, v13, :cond_e

    goto :goto_6

    :cond_e
    const/4 v13, 0x2

    if-ne v11, v13, :cond_10

    .line 61
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v13, "animated-vector"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 62
    new-instance v11, Lpi;

    const/4 v13, 0x0

    .line 63
    invoke-direct {v11, v9, v13, v13}, Lpi;-><init>(Landroid/content/Context;Lpi$b;Landroid/content/res/Resources;)V

    .line 64
    invoke-virtual {v11, v7, v1, v2, v3}, Lpi;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto :goto_7

    .line 65
    :cond_f
    invoke-static/range {p1 .. p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto :goto_7

    .line 66
    :cond_10
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    invoke-static {v1, v3, v0}, Ljo;->v(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    :goto_7
    if-eqz v11, :cond_14

    if-eq v5, v10, :cond_13

    if-eq v8, v10, :cond_13

    .line 68
    iget-object v0, v4, Lq0;->t:Lq0$c;

    .line 69
    invoke-virtual {v0, v11}, Lr0$c;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v7

    .line 70
    invoke-static {v5, v8}, Lq0$c;->h(II)J

    move-result-wide v9

    if-eqz v12, :cond_12

    const-wide v13, 0x200000000L

    goto :goto_8

    :cond_12
    const-wide/16 v13, 0x0

    .line 71
    :goto_8
    iget-object v11, v0, Lq0$c;->K:Lj4;

    int-to-long v2, v7

    or-long v15, v2, v13

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v11, v9, v10, v7}, Lj4;->b(JLjava/lang/Object;)V

    if-eqz v12, :cond_15

    .line 72
    invoke-static {v8, v5}, Lq0$c;->h(II)J

    move-result-wide v7

    .line 73
    iget-object v0, v0, Lq0$c;->K:Lj4;

    const-wide v9, 0x100000000L

    or-long/2addr v2, v9

    or-long/2addr v2, v13

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v7, v8, v2}, Lj4;->b(JLjava/lang/Object;)V

    goto :goto_9

    .line 74
    :cond_13
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": <transition> tag requires \'fromId\' & \'toId\' attributes"

    .line 75
    invoke-static {v1, v2, v3}, Ljo;->v(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_14
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-static {v1, v3, v0}, Ljo;->v(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    :goto_9
    move-object/from16 v9, p0

    move-object/from16 v7, p1

    :goto_a
    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    goto/16 :goto_0

    .line 78
    :cond_16
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {v4, v0}, Lq0;->onStateChange([I)Z

    return-object v4

    .line 79
    :cond_17
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": invalid animated-selector tag "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public b()Lr0$c;
    .locals 3

    .line 1
    new-instance v0, Lq0$c;

    iget-object v1, p0, Lq0;->t:Lq0$c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lq0$c;-><init>(Lq0$c;Lq0;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public e(Lr0$c;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lt0;->e(Lr0$c;)V

    .line 2
    instance-of v0, p1, Lq0$c;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lq0$c;

    iput-object p1, p0, Lq0;->t:Lq0$c;

    :cond_0
    return-void
.end method

.method public f()Lt0$a;
    .locals 3

    .line 1
    new-instance v0, Lq0$c;

    iget-object v1, p0, Lq0;->t:Lq0$c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lq0$c;-><init>(Lq0$c;Lq0;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .line 1
    invoke-super {p0}, Lr0;->jumpToCurrentState()V

    .line 2
    iget-object v0, p0, Lq0;->u:Lq0$g;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lq0$g;->d()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lq0;->u:Lq0$g;

    .line 5
    iget v0, p0, Lq0;->v:I

    invoke-virtual {p0, v0}, Lr0;->d(I)Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lq0;->v:I

    .line 7
    iput v0, p0, Lq0;->w:I

    :cond_0
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq0;->x:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lt0;->mutate()Landroid/graphics/drawable/Drawable;

    if-ne p0, p0, :cond_0

    .line 2
    iget-object v0, p0, Lq0;->t:Lq0$c;

    invoke-virtual {v0}, Lq0$c;->e()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lq0;->x:Z

    :cond_0
    return-object p0
.end method

.method public onStateChange([I)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lq0;->t:Lq0$c;

    .line 2
    invoke-virtual {v2, v1}, Lt0$a;->g([I)I

    move-result v3

    if-ltz v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v3, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v2, v3}, Lt0$a;->g([I)I

    move-result v3

    .line 4
    :goto_0
    iget v2, v0, Lr0;->k:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v2, :cond_c

    .line 5
    iget-object v6, v0, Lq0;->u:Lq0$g;

    if-eqz v6, :cond_3

    .line 6
    iget v2, v0, Lq0;->v:I

    if-ne v3, v2, :cond_1

    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_6

    .line 7
    :cond_1
    iget v2, v0, Lq0;->w:I

    if-ne v3, v2, :cond_2

    invoke-virtual {v6}, Lq0$g;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v6}, Lq0$g;->b()V

    .line 9
    iget v2, v0, Lq0;->w:I

    iput v2, v0, Lq0;->v:I

    .line 10
    iput v3, v0, Lq0;->w:I

    goto :goto_1

    .line 11
    :cond_2
    iget v2, v0, Lq0;->v:I

    .line 12
    invoke-virtual {v6}, Lq0$g;->d()V

    :cond_3
    const/4 v6, 0x0

    .line 13
    iput-object v6, v0, Lq0;->u:Lq0$g;

    const/4 v6, -0x1

    .line 14
    iput v6, v0, Lq0;->w:I

    .line 15
    iput v6, v0, Lq0;->v:I

    .line 16
    iget-object v6, v0, Lq0;->t:Lq0$c;

    .line 17
    invoke-virtual {v6, v2}, Lq0$c;->i(I)I

    move-result v7

    .line 18
    invoke-virtual {v6, v3}, Lq0$c;->i(I)I

    move-result v8

    if-eqz v8, :cond_a

    if-nez v7, :cond_4

    goto/16 :goto_5

    .line 19
    :cond_4
    invoke-static {v7, v8}, Lq0$c;->h(II)J

    move-result-wide v9

    .line 20
    iget-object v11, v6, Lq0$c;->K:Lj4;

    const-wide/16 v12, -0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v9, v10, v14}, Lj4;->g(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    long-to-int v10, v9

    if-gez v10, :cond_5

    goto/16 :goto_5

    .line 21
    :cond_5
    invoke-static {v7, v8}, Lq0$c;->h(II)J

    move-result-wide v14

    .line 22
    iget-object v9, v6, Lq0$c;->K:Lj4;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v14, v15, v11}, Lj4;->g(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide v16, 0x200000000L

    and-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    .line 23
    :goto_2
    invoke-virtual {v0, v10}, Lr0;->d(I)Z

    .line 24
    iget-object v10, v0, Lr0;->g:Landroid/graphics/drawable/Drawable;

    .line 25
    instance-of v11, v10, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v11, :cond_8

    .line 26
    invoke-static {v7, v8}, Lq0$c;->h(II)J

    move-result-wide v7

    .line 27
    iget-object v6, v6, Lq0$c;->K:Lj4;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v7, v8, v11}, Lj4;->g(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide v11, 0x100000000L

    and-long/2addr v6, v11

    cmp-long v8, v6, v16

    if-eqz v8, :cond_7

    const/4 v6, 0x1

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    .line 28
    :goto_3
    new-instance v7, Lq0$e;

    check-cast v10, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v7, v10, v6, v9}, Lq0$e;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    goto :goto_4

    .line 29
    :cond_8
    instance-of v6, v10, Lpi;

    if-eqz v6, :cond_9

    .line 30
    new-instance v7, Lq0$d;

    check-cast v10, Lpi;

    invoke-direct {v7, v10}, Lq0$d;-><init>(Lpi;)V

    goto :goto_4

    .line 31
    :cond_9
    instance-of v6, v10, Landroid/graphics/drawable/Animatable;

    if-eqz v6, :cond_a

    .line 32
    new-instance v7, Lq0$b;

    check-cast v10, Landroid/graphics/drawable/Animatable;

    invoke-direct {v7, v10}, Lq0$b;-><init>(Landroid/graphics/drawable/Animatable;)V

    .line 33
    :goto_4
    invoke-virtual {v7}, Lq0$g;->c()V

    .line 34
    iput-object v7, v0, Lq0;->u:Lq0$g;

    .line 35
    iput v2, v0, Lq0;->w:I

    .line 36
    iput v3, v0, Lq0;->v:I

    goto/16 :goto_1

    :cond_a
    :goto_5
    const/4 v2, 0x0

    :goto_6
    if-nez v2, :cond_b

    .line 37
    invoke-virtual {v0, v3}, Lr0;->d(I)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    const/4 v4, 0x1

    .line 38
    :cond_c
    iget-object v2, v0, Lr0;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_d

    .line 39
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v4, v1

    :cond_d
    return v4
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lr0;->setVisible(ZZ)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lq0;->u:Lq0$g;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {v1}, Lq0$g;->c()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lq0;->jumpToCurrentState()V

    :cond_2
    :goto_0
    return v0
.end method
