.class public final Lwk6$b;
.super Lgj6$a;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwk6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6$a<",
        "Lwk6;",
        "Lwk6$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lwk6;->B()Lwk6;

    move-result-object v0

    invoke-direct {p0, v0}, Lgj6$a;-><init>(Lgj6;)V

    return-void
.end method

.method public constructor <init>(Lwk6$a;)V
    .locals 0

    .line 2
    invoke-static {}, Lwk6;->B()Lwk6;

    move-result-object p1

    invoke-direct {p0, p1}, Lgj6$a;-><init>(Lgj6;)V

    return-void
.end method


# virtual methods
.method public r(I)Lwk6$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lgj6$a;->o()V

    .line 2
    iget-object v0, p0, Lgj6$a;->f:Lgj6;

    check-cast v0, Lwk6;

    invoke-static {v0, p1}, Lwk6;->D(Lwk6;I)V

    return-object p0
.end method

.method public s(J)Lwk6$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lgj6$a;->o()V

    .line 2
    iget-object v0, p0, Lgj6$a;->f:Lgj6;

    check-cast v0, Lwk6;

    invoke-static {v0, p1, p2}, Lwk6;->C(Lwk6;J)V

    return-object p0
.end method
