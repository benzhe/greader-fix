.class public Lo85$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo85;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo85;


# direct methods
.method public constructor <init>(Lo85;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo85$a;->a:Lo85;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo85$a;->a:Lo85;

    iget-object v1, v0, Lo85;->c:Landroid/animation/ValueAnimator;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, v0, Lo85;->c:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method
