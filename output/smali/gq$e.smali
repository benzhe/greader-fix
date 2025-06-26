.class public final Lgq$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgq;->b()Lmb7;
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
        "Len;",
        "Lw38<",
        "+",
        "Ldq;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lgq;


# direct methods
.method public constructor <init>(Lgq;)V
    .locals 0

    iput-object p1, p0, Lgq$e;->e:Lgq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Len;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lgq$e;->e:Lgq;

    .line 4
    iget-object p1, p1, Lgq;->a:Lgj7;

    .line 5
    sget-object v0, Lgb7;->i:Lgb7;

    invoke-virtual {p1, v0}, Lwb7;->g(Lgb7;)Lmb7;

    move-result-object p1

    return-object p1
.end method
