.class public Lm5$g;
.super Lm5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lm5;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lm5$g;->f:Z

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;F)V
    .locals 9

    const-string v0, "unable to setProgress"

    const-string v1, "SplineSet"

    .line 1
    instance-of v2, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 3
    iget-object v0, p0, Lm5;->a:Lp4;

    float-to-double v1, p2

    invoke-virtual {v0, v1, v2, v3}, Lp4;->b(DI)D

    move-result-wide v0

    double-to-float p2, v0

    .line 4
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto :goto_1

    .line 5
    :cond_0
    iget-boolean v2, p0, Lm5$g;->f:Z

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 6
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setProgress"

    new-array v7, v4, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    iput-boolean v4, p0, Lm5$g;->f:Z

    :goto_0
    if-eqz v2, :cond_2

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    .line 8
    iget-object v5, p0, Lm5;->a:Lp4;

    float-to-double v6, p2

    invoke-virtual {v5, v6, v7, v3}, Lp4;->b(DI)D

    move-result-wide v5

    double-to-float p2, v5

    .line 9
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v4, v3

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 10
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception p1

    .line 11
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method
