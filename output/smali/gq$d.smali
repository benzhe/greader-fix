.class public final Lgq$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgq;->d(Landroid/app/Activity;Lhn;)Lhb7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Luc7<",
        "Lin;",
        "Llb7;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lgq;


# direct methods
.method public constructor <init>(Lgq;)V
    .locals 0

    iput-object p1, p0, Lgq$d;->e:Lgq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lin;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lgq$d;->e:Lgq;

    .line 4
    iget v1, p1, Lin;->a:I

    .line 5
    invoke-static {v0, v1}, Lgq;->f(Lgq;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object p1, Lxd7;->a:Lhb7;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Lmq;->a(Lin;)Lmq;

    move-result-object p1

    .line 8
    new-instance v0, Lyd7;

    invoke-direct {v0, p1}, Lyd7;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
