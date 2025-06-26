.class public final Lfq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldc7<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lgq$a;

.field public final synthetic b:Len;


# direct methods
.method public constructor <init>(Lgq$a;Len;)V
    .locals 0

    iput-object p1, p0, Lfq;->a:Lgq$a;

    iput-object p2, p0, Lfq;->b:Len;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbc7;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbc7<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lfq;->b:Len;

    iget-object v1, p0, Lfq;->a:Lgq$a;

    iget-object v1, v1, Lgq$a;->f:Lcn;

    new-instance v2, Lfq$a;

    invoke-direct {v2, p0, p1}, Lfq$a;-><init>(Lfq;Lbc7;)V

    invoke-virtual {v0, v1, v2}, Len;->a(Lcn;Ldn;)V

    return-void
.end method
