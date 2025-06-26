.class public Lu07;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Lt07$e;


# direct methods
.method public constructor <init>(Lt07$e;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu07;->f:Lt07$e;

    iput-object p2, p0, Lu07;->e:Landroid/view/View;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lu07;->f:Lt07$e;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lt07$e;->g:Z

    .line 3
    new-instance v1, Lu07$a;

    invoke-direct {v1, p0}, Lu07$a;-><init>(Lu07;)V

    .line 4
    iput-object v1, v0, Lt07$e;->f:Ljava/lang/Runnable;

    .line 5
    iget-object v0, v0, Lt07$e;->h:Lt07;

    iget-object v0, v0, Lt07;->a:Lt07$b;

    iget-object v0, v0, Lt07$b;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
