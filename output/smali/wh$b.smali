.class public Lwh$b;
.super Lth;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lwh;


# direct methods
.method public constructor <init>(Lwh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lth;-><init>()V

    .line 2
    iput-object p1, p0, Lwh$b;->a:Lwh;

    return-void
.end method


# virtual methods
.method public a(Lqh;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lwh$b;->a:Lwh;

    iget-boolean v0, p1, Lwh;->E:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lqh;->I()V

    .line 3
    iget-object p1, p0, Lwh$b;->a:Lwh;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lwh;->E:Z

    :cond_0
    return-void
.end method

.method public c(Lqh;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lwh$b;->a:Lwh;

    iget v1, v0, Lwh;->D:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lwh;->D:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lwh;->E:Z

    .line 3
    invoke-virtual {v0}, Lqh;->o()V

    .line 4
    :cond_0
    invoke-virtual {p1, p0}, Lqh;->x(Lqh$d;)Lqh;

    return-void
.end method
