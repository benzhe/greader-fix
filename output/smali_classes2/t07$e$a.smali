.class public Lt07$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt07$e;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Lt07$e;


# direct methods
.method public constructor <init>(Lt07$e;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt07$e$a;->f:Lt07$e;

    iput-object p2, p0, Lt07$e$a;->e:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lt07$e$a;->f:Lt07$e;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lt07$e;->g:Z

    .line 3
    iget-object v1, v0, Lt07$e;->h:Lt07;

    iget-object v2, p0, Lt07$e$a;->e:Landroid/view/View;

    .line 4
    iget v0, v0, Lt07$e;->e:I

    .line 5
    invoke-virtual {v1, v2, v0}, Lt07;->b(Landroid/view/View;I)V

    .line 6
    iget-object v0, p0, Lt07$e$a;->f:Lt07$e;

    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lt07$e;->f:Ljava/lang/Runnable;

    return-void
.end method
