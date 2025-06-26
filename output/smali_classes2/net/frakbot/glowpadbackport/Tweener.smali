.class public Lnet/frakbot/glowpadbackport/Tweener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Tweener"

.field private static mCleanupListener:Landroid/animation/Animator$AnimatorListener;

.field private static sTweens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lnet/frakbot/glowpadbackport/Tweener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public animator:Landroid/animation/ObjectAnimator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/frakbot/glowpadbackport/Tweener;->sTweens:Ljava/util/HashMap;

    .line 2
    new-instance v0, Lnet/frakbot/glowpadbackport/Tweener$1;

    invoke-direct {v0}, Lnet/frakbot/glowpadbackport/Tweener$1;-><init>()V

    sput-object v0, Lnet/frakbot/glowpadbackport/Tweener;->mCleanupListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public constructor <init>(Landroid/animation/ObjectAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lnet/frakbot/glowpadbackport/Tweener;->animator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public static synthetic access$000(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lnet/frakbot/glowpadbackport/Tweener;->remove(Landroid/animation/Animator;)V

    return-void
.end method

.method private static remove(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    sget-object v0, Lnet/frakbot/glowpadbackport/Tweener;->sTweens:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/frakbot/glowpadbackport/Tweener;

    iget-object v1, v1, Lnet/frakbot/glowpadbackport/Tweener;->animator:Landroid/animation/ObjectAnimator;

    if-ne v1, p0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    return-void
.end method

.method private static varargs replace(Ljava/util/ArrayList;[Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/animation/PropertyValuesHolder;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 2
    sget-object v3, Lnet/frakbot/glowpadbackport/Tweener;->sTweens:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/frakbot/glowpadbackport/Tweener;

    if-eqz v2, :cond_1

    .line 3
    iget-object v3, v2, Lnet/frakbot/glowpadbackport/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    if-eqz p0, :cond_0

    .line 4
    iget-object v2, v2, Lnet/frakbot/glowpadbackport/Tweener;->animator:Landroid/animation/ObjectAnimator;

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/animation/PropertyValuesHolder;

    .line 6
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_1

    .line 7
    :cond_0
    sget-object v3, Lnet/frakbot/glowpadbackport/Tweener;->sTweens:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static reset()V
    .locals 1

    .line 1
    sget-object v0, Lnet/frakbot/glowpadbackport/Tweener;->sTweens:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static varargs to(Ljava/lang/Object;J[Ljava/lang/Object;)Lnet/frakbot/glowpadbackport/Tweener;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    const/4 v4, 0x2

    div-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-wide v8, v6

    const/4 v10, 0x0

    move-object v6, v3

    move-object v7, v6

    .line 2
    :goto_0
    array-length v11, v1

    const/4 v12, 0x1

    if-ge v10, v11, :cond_c

    .line 3
    aget-object v11, v1, v10

    instance-of v11, v11, Ljava/lang/String;

    if-eqz v11, :cond_b

    .line 4
    aget-object v11, v1, v10

    check-cast v11, Ljava/lang/String;

    add-int/lit8 v13, v10, 0x1

    .line 5
    aget-object v13, v1, v13

    const-string v14, "simultaneousTween"

    .line 6
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v14, "ease"

    .line 7
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 8
    check-cast v13, Lnet/frakbot/glowpadbackport/util/TimeInterpolator;

    move-object v3, v13

    goto/16 :goto_3

    :cond_1
    const-string v14, "onUpdate"

    .line 9
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "onUpdateListener"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v14, "onComplete"

    .line 10
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    const-string v14, "onCompleteListener"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    goto/16 :goto_1

    :cond_3
    const-string v14, "delay"

    .line 11
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 12
    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    goto/16 :goto_3

    :cond_4
    const-string v14, "syncWith"

    .line 13
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_3

    .line 14
    :cond_5
    instance-of v14, v13, [F

    if-eqz v14, :cond_6

    new-array v14, v4, [F

    .line 15
    check-cast v13, [F

    aget v15, v13, v5

    aput v15, v14, v5

    aget v13, v13, v12

    aput v13, v14, v12

    invoke-static {v11, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 16
    :cond_6
    instance-of v14, v13, [I

    if-eqz v14, :cond_7

    new-array v14, v4, [I

    .line 17
    check-cast v13, [I

    aget v15, v13, v5

    aput v15, v14, v5

    aget v13, v13, v12

    aput v13, v14, v12

    invoke-static {v11, v14}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 18
    :cond_7
    instance-of v14, v13, Ljava/lang/Number;

    if-eqz v14, :cond_8

    .line 19
    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    move-result v13

    new-array v12, v12, [F

    aput v13, v12, v5

    .line 20
    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 21
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad argument for key \""

    const-string v2, "\" with value "

    invoke-static {v1, v11, v2}, Ljo;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 22
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_9
    :goto_1
    check-cast v13, Landroid/animation/Animator$AnimatorListener;

    move-object v7, v13

    goto :goto_3

    .line 24
    :cond_a
    :goto_2
    check-cast v13, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object v6, v13

    :goto_3
    add-int/lit8 v10, v10, 0x2

    goto/16 :goto_0

    .line 25
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Key must be a string: "

    invoke-static {v2}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v1, v1, v10

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_c
    sget-object v1, Lnet/frakbot/glowpadbackport/Tweener;->sTweens:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/frakbot/glowpadbackport/Tweener;

    if-nez v1, :cond_d

    .line 27
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/animation/PropertyValuesHolder;

    .line 28
    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 29
    new-instance v2, Lnet/frakbot/glowpadbackport/Tweener;

    invoke-direct {v2, v1}, Lnet/frakbot/glowpadbackport/Tweener;-><init>(Landroid/animation/ObjectAnimator;)V

    .line 30
    sget-object v4, Lnet/frakbot/glowpadbackport/Tweener;->sTweens:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 31
    :cond_d
    sget-object v4, Lnet/frakbot/glowpadbackport/Tweener;->sTweens:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/frakbot/glowpadbackport/Tweener;

    iget-object v4, v4, Lnet/frakbot/glowpadbackport/Tweener;->animator:Landroid/animation/ObjectAnimator;

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v0, v10, v5

    .line 32
    invoke-static {v2, v10}, Lnet/frakbot/glowpadbackport/Tweener;->replace(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    move-object v2, v1

    move-object v1, v4

    :goto_4
    if-eqz v3, :cond_e

    .line 33
    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 34
    :cond_e
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    move-wide/from16 v3, p1

    .line 35
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz v6, :cond_f

    .line 36
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->removeAllUpdateListeners()V

    .line 37
    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_f
    if-eqz v7, :cond_10

    .line 38
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 39
    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 40
    :cond_10
    sget-object v0, Lnet/frakbot/glowpadbackport/Tweener;->mCleanupListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v2
.end method


# virtual methods
.method public varargs from(Ljava/lang/Object;J[Ljava/lang/Object;)Lnet/frakbot/glowpadbackport/Tweener;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lnet/frakbot/glowpadbackport/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lnet/frakbot/glowpadbackport/Tweener;

    move-result-object p1

    return-object p1
.end method
