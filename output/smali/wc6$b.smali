.class public final Lwc6$b;
.super Lgj6$a;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwc6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6$a<",
        "Lwc6;",
        "Lwc6$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lwc6;->B()Lwc6;

    move-result-object v0

    invoke-direct {p0, v0}, Lgj6$a;-><init>(Lgj6;)V

    return-void
.end method

.method public constructor <init>(Lwc6$a;)V
    .locals 0

    .line 2
    invoke-static {}, Lwc6;->B()Lwc6;

    move-result-object p1

    invoke-direct {p0, p1}, Lgj6$a;-><init>(Lgj6;)V

    return-void
.end method


# virtual methods
.method public r(Ljava/lang/String;Lbd6;)Lwc6$b;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p0}, Lgj6$a;->o()V

    .line 4
    iget-object v0, p0, Lgj6$a;->f:Lgj6;

    check-cast v0, Lwc6;

    invoke-static {v0}, Lwc6;->C(Lwc6;)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Luj6;

    invoke-virtual {v0, p1, p2}, Luj6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
