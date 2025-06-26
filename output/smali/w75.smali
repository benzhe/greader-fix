.class public final Lw75;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public b:Z

.field public c:I


# direct methods
.method public constructor <init>(Lv75;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lw75;->b:Z

    .line 3
    iput v0, p0, Lw75;->c:I

    .line 4
    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lw75;->a:Landroid/view/View;

    return-void
.end method
