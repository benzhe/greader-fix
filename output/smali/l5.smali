.class public Ll5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll5$b;
    }
.end annotation


# instance fields
.field public final a:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public b:Lc7;

.field public c:Ll5$b;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ll5$b;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ll5$b;

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ll5$b;",
            ">;"
        }
    .end annotation
.end field

.field public g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "La7;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public i:Landroid/util/SparseIntArray;

.field public j:I

.field public k:I

.field public l:Landroid/view/MotionEvent;

.field public m:Z

.field public n:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

.field public o:Z

.field public p:F

.field public q:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ll5;->b:Lc7;

    .line 3
    iput-object v0, p0, Ll5;->c:Ll5$b;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ll5;->d:Ljava/util/ArrayList;

    .line 5
    iput-object v0, p0, Ll5;->e:Ll5$b;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ll5;->f:Ljava/util/ArrayList;

    .line 7
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Ll5;->g:Landroid/util/SparseArray;

    .line 8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ll5;->h:Ljava/util/HashMap;

    .line 9
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Ll5;->i:Landroid/util/SparseIntArray;

    const/16 v1, 0x190

    .line 10
    iput v1, p0, Ll5;->j:I

    const/4 v1, 0x0

    .line 11
    iput v1, p0, Ll5;->k:I

    .line 12
    iput-boolean v1, p0, Ll5;->m:Z

    .line 13
    iput-object p2, p0, Ll5;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 15
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    .line 16
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    if-eqz v2, :cond_6

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    goto/16 :goto_5

    .line 17
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "MotionScene"

    const/4 v7, -0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    :try_start_1
    const-string v3, "StateSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_1
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_2
    const-string v3, "OnSwipe"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_3
    const-string v3, "OnClick"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_4
    const-string v4, "Transition"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :sswitch_5
    const-string v3, "KeyFrameSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_6
    const-string v3, "ConstraintSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    .line 19
    :pswitch_0
    new-instance v2, Lc5;

    invoke-direct {v2, p1, p2}, Lc5;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 20
    iget-object v3, v0, Ll5$b;->k:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 22
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Ll5;->j(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    .line 23
    :pswitch_2
    new-instance v2, Lc7;

    invoke-direct {v2, p1, p2}, Lc7;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v2, p0, Ll5;->b:Lc7;

    goto/16 :goto_5

    .line 24
    :pswitch_3
    iget-object v2, v0, Ll5$b;->m:Ljava/util/ArrayList;

    new-instance v3, Ll5$b$a;

    invoke-direct {v3, p1, v0, p2}, Ll5$b$a;-><init>(Landroid/content/Context;Ll5$b;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_4
    if-nez v0, :cond_2

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v3

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " OnSwipe ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".xml:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_2
    new-instance v2, Lq5;

    iget-object v3, p0, Ll5;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-direct {v2, p1, v3, p2}, Lq5;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 29
    iput-object v2, v0, Ll5$b;->l:Lq5;

    goto :goto_5

    .line 30
    :pswitch_5
    iget-object v0, p0, Ll5;->d:Ljava/util/ArrayList;

    new-instance v2, Ll5$b;

    invoke-direct {v2, p0, p1, p2}, Ll5$b;-><init>(Ll5;Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Ll5;->c:Ll5$b;

    if-nez v0, :cond_3

    .line 32
    iget-boolean v0, v2, Ll5$b;->b:Z

    if-nez v0, :cond_3

    .line 33
    iput-object v2, p0, Ll5;->c:Ll5$b;

    .line 34
    iget-object v0, v2, Ll5$b;->l:Lq5;

    if-eqz v0, :cond_3

    .line 35
    iget-boolean v3, p0, Ll5;->o:Z

    invoke-virtual {v0, v3}, Lq5;->b(Z)V

    .line 36
    :cond_3
    iget-boolean v0, v2, Ll5$b;->b:Z

    if-eqz v0, :cond_5

    .line 37
    iget v0, v2, Ll5$b;->c:I

    if-ne v0, v7, :cond_4

    .line 38
    iput-object v2, p0, Ll5;->e:Ll5$b;

    goto :goto_3

    .line 39
    :cond_4
    iget-object v0, p0, Ll5;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    :goto_3
    iget-object v0, p0, Ll5;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    move-object v0, v2

    goto :goto_5

    .line 41
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Ll5;->k(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 42
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING UNKNOWN ATTRIBUTE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 43
    :cond_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 44
    :goto_5
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_1
    move-exception p1

    .line 46
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 47
    :cond_7
    :goto_6
    iget-object p1, p0, Ll5;->g:Landroid/util/SparseArray;

    sget p2, Landroidx/constraintlayout/widget/R$id;->motion_base:I

    new-instance p3, La7;

    invoke-direct {p3}, La7;-><init>()V

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    iget-object p1, p0, Ll5;->h:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "motion_base"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x50764adb -> :sswitch_6
        -0x49df9cec -> :sswitch_5
        0x100d4975 -> :sswitch_4
        0x12a432c9 -> :sswitch_3
        0x138aac7b -> :sswitch_2
        0x2f487256 -> :sswitch_1
        0x526c4e31 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Z
    .locals 10

    .line 1
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$i;->h:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$i;->g:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$i;->f:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    iget-object v3, p0, Ll5;->n:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    return v5

    .line 2
    :cond_1
    iget-object v3, p0, Ll5;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ll5$b;

    .line 3
    iget v7, v6, Ll5$b;->n:I

    if-nez v7, :cond_3

    goto :goto_1

    .line 4
    :cond_3
    iget v8, v6, Ll5$b;->d:I

    if-ne p2, v8, :cond_6

    const/4 v8, 0x4

    if-eq v7, v8, :cond_4

    const/4 v9, 0x2

    if-ne v7, v9, :cond_6

    .line 5
    :cond_4
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    .line 6
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Ll5$b;)V

    .line 7
    iget p2, v6, Ll5$b;->n:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne p2, v8, :cond_5

    .line 8
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r(F)V

    .line 9
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    .line 10
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    goto :goto_2

    .line 11
    :cond_5
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 12
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->s(Z)V

    .line 13
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    .line 14
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    .line 15
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    :goto_2
    return v4

    .line 16
    :cond_6
    iget v8, v6, Ll5$b;->c:I

    if-ne p2, v8, :cond_2

    const/4 v8, 0x3

    if-eq v7, v8, :cond_7

    if-ne v7, v4, :cond_2

    .line 17
    :cond_7
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    .line 18
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Ll5$b;)V

    .line 19
    iget p2, v6, Ll5$b;->n:I

    const/4 v3, 0x0

    if-ne p2, v8, :cond_8

    .line 20
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r(F)V

    .line 21
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    .line 22
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    goto :goto_3

    .line 23
    :cond_8
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 24
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->s(Z)V

    .line 25
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    .line 26
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    .line 27
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    :goto_3
    return v4

    :cond_9
    return v5
.end method

.method public b(I)La7;
    .locals 2

    .line 1
    iget-object v0, p0, Ll5;->b:Lc7;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 2
    invoke-virtual {v0, p1, v1, v1}, Lc7;->a(III)I

    move-result v0

    if-eq v0, v1, :cond_0

    move p1, v0

    .line 3
    :cond_0
    iget-object v0, p0, Ll5;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Warning could not find ConstraintSet id/"

    .line 4
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ll5;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Ld0$h;->E(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " In MotionScene"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MotionScene"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Ll5;->g:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La7;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Ll5;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La7;

    :goto_0
    return-object p1
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Ll5;->c:Ll5$b;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Ll5$b;->h:I

    return v0

    .line 3
    :cond_0
    iget v0, p0, Ll5;->j:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Ll5;->c:Ll5$b;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    iget v0, v0, Ll5$b;->c:I

    return v0
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    const-string v0, "/"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v4, "id"

    invoke-virtual {v3, v0, v4, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    if-ne p1, v1, :cond_2

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 5
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_1
    const-string p2, "MotionScene"

    const-string v0, "error in parsing id"

    .line 6
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return p1
.end method

.method public f()Landroid/view/animation/Interpolator;
    .locals 3

    .line 1
    iget-object v0, p0, Ll5;->c:Ll5$b;

    .line 2
    iget v1, v0, Ll5$b;->e:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_6

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    if-eq v1, v0, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    return-object v0

    .line 5
    :cond_2
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-object v0

    .line 6
    :cond_3
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    return-object v0

    .line 7
    :cond_4
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-object v0

    .line 8
    :cond_5
    iget-object v0, v0, Ll5$b;->f:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Lq4;->c(Ljava/lang/String;)Lq4;

    move-result-object v0

    .line 10
    new-instance v1, Ll5$a;

    invoke-direct {v1, p0, v0}, Ll5$a;-><init>(Ll5;Lq4;)V

    return-object v1

    .line 11
    :cond_6
    iget-object v0, p0, Ll5;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ll5;->c:Ll5$b;

    .line 12
    iget v1, v1, Ll5$b;->g:I

    .line 13
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method public g(Li5;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll5;->c:Ll5$b;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Ll5;->e:Ll5$b;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Ll5$b;->k:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc5;

    .line 5
    invoke-virtual {v1, p1}, Lc5;->a(Li5;)V

    goto :goto_0

    :cond_0
    return-void

    .line 6
    :cond_1
    iget-object v0, v0, Ll5$b;->k:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc5;

    .line 8
    invoke-virtual {v1, p1}, Lc5;->a(Li5;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public h()F
    .locals 1

    .line 1
    iget-object v0, p0, Ll5;->c:Ll5$b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Ll5$b;->l:Lq5;

    if-eqz v0, :cond_0

    .line 3
    iget v0, v0, Lq5;->q:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Ll5;->c:Ll5$b;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    iget v0, v0, Ll5$b;->d:I

    return v0
.end method

.method public final j(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9

    .line 1
    new-instance v0, La7;

    invoke-direct {v0}, La7;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, La7;->b:Z

    .line 3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    :goto_0
    if-ge v1, v2, :cond_3

    .line 4
    invoke-interface {p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-interface {p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 6
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const-string v8, "deriveConstraintsFrom"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "id"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    invoke-virtual {p0, p1, v7}, Ll5;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 8
    iget-object v6, p0, Ll5;->h:Ljava/util/HashMap;

    const/16 v8, 0x2f

    .line 9
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 10
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 11
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {p0, p1, v7}, Ll5;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eq v4, v3, :cond_5

    .line 13
    iget-object v1, p0, Ll5;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:I

    .line 14
    invoke-virtual {v0, p1, p2}, La7;->i(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    if-eq v5, v3, :cond_4

    .line 15
    iget-object p1, p0, Ll5;->i:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 16
    :cond_4
    iget-object p1, p0, Ll5;->g:Landroid/util/SparseArray;

    invoke-virtual {p1, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public final k(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    .line 1
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    .line 2
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->MotionScene:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 5
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionScene_defaultDuration:I

    if-ne v2, v3, :cond_0

    .line 6
    iget v3, p0, Ll5;->j:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Ll5;->j:I

    goto :goto_1

    .line 7
    :cond_0
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionScene_layoutDuringTransition:I

    if-ne v2, v3, :cond_1

    .line 8
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Ll5;->k:I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final l(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Ll5;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-lez v0, :cond_9

    .line 2
    iget-object v1, p0, Ll5;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ll5;->l(I)V

    .line 3
    iget-object v1, p0, Ll5;->g:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La7;

    .line 4
    iget-object v2, p0, Ll5;->g:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La7;

    if-nez v2, :cond_0

    const-string p1, "ERROR! invalid deriveConstraintsFrom: @id/"

    .line 5
    invoke-static {p1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Ll5;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 6
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Ld0$h;->E(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MotionScene"

    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_0
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, v2, La7;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 10
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 11
    iget-object v5, v2, La7;->c:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La7$a;

    .line 12
    iget-object v5, v1, La7;->c:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 13
    iget-object v5, v1, La7;->c:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, La7$a;

    invoke-direct {v7}, La7$a;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_2
    iget-object v5, v1, La7;->c:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La7$a;

    .line 15
    iget-object v5, v4, La7$a;->d:La7$b;

    iget-boolean v6, v5, La7$b;->b:Z

    if-nez v6, :cond_3

    .line 16
    iget-object v6, v3, La7$a;->d:La7$b;

    invoke-virtual {v5, v6}, La7$b;->a(La7$b;)V

    .line 17
    :cond_3
    iget-object v5, v4, La7$a;->b:La7$d;

    iget-boolean v6, v5, La7$d;->a:Z

    if-nez v6, :cond_4

    .line 18
    iget-object v6, v3, La7$a;->b:La7$d;

    invoke-virtual {v5, v6}, La7$d;->a(La7$d;)V

    .line 19
    :cond_4
    iget-object v5, v4, La7$a;->e:La7$e;

    iget-boolean v6, v5, La7$e;->a:Z

    if-nez v6, :cond_5

    .line 20
    iget-object v6, v3, La7$a;->e:La7$e;

    invoke-virtual {v5, v6}, La7$e;->a(La7$e;)V

    .line 21
    :cond_5
    iget-object v5, v4, La7$a;->c:La7$c;

    iget-boolean v6, v5, La7$c;->a:Z

    if-nez v6, :cond_6

    .line 22
    iget-object v6, v3, La7$a;->c:La7$c;

    invoke-virtual {v5, v6}, La7$c;->a(La7$c;)V

    .line 23
    :cond_6
    iget-object v5, v3, La7$a;->f:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 24
    iget-object v7, v4, La7$a;->f:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 25
    iget-object v7, v4, La7$a;->f:Ljava/util/HashMap;

    iget-object v8, v3, La7$a;->f:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 26
    :cond_8
    iget-object v0, p0, Ll5;->i:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_9
    return-void
.end method

.method public m(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Ll5;->b:Lc7;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1, v1, v1}, Lc7;->a(III)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 3
    :goto_0
    iget-object v2, p0, Ll5;->b:Lc7;

    invoke-virtual {v2, p2, v1, v1}, Lc7;->a(III)I

    move-result v2

    if-eq v2, v1, :cond_2

    goto :goto_1

    :cond_1
    move v0, p1

    :cond_2
    move v2, p2

    .line 4
    :goto_1
    iget-object v3, p0, Ll5;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll5$b;

    .line 5
    iget v5, v4, Ll5$b;->c:I

    if-ne v5, v2, :cond_4

    .line 6
    iget v6, v4, Ll5$b;->d:I

    if-eq v6, v0, :cond_5

    :cond_4
    if-ne v5, p2, :cond_3

    .line 7
    iget v5, v4, Ll5$b;->d:I

    if-ne v5, p1, :cond_3

    .line 8
    :cond_5
    iput-object v4, p0, Ll5;->c:Ll5$b;

    .line 9
    iget-object p1, v4, Ll5$b;->l:Lq5;

    if-eqz p1, :cond_6

    .line 10
    iget-boolean p2, p0, Ll5;->o:Z

    invoke-virtual {p1, p2}, Lq5;->b(Z)V

    :cond_6
    return-void

    .line 11
    :cond_7
    iget-object p1, p0, Ll5;->e:Ll5$b;

    .line 12
    iget-object v3, p0, Ll5;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll5$b;

    .line 13
    iget v5, v4, Ll5$b;->c:I

    if-ne v5, p2, :cond_8

    move-object p1, v4

    goto :goto_2

    .line 14
    :cond_9
    new-instance p2, Ll5$b;

    invoke-direct {p2, p0, p1}, Ll5$b;-><init>(Ll5;Ll5$b;)V

    .line 15
    iput v0, p2, Ll5$b;->d:I

    .line 16
    iput v2, p2, Ll5$b;->c:I

    if-eq v0, v1, :cond_a

    .line 17
    iget-object p1, p0, Ll5;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_a
    iput-object p2, p0, Ll5;->c:Ll5$b;

    return-void
.end method

.method public n()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ll5;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll5$b;

    .line 2
    iget-object v1, v1, Ll5$b;->l:Lq5;

    if-eqz v1, :cond_0

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Ll5;->c:Ll5$b;

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, v0, Ll5$b;->l:Lq5;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
