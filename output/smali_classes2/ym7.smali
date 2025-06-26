.class public final Lym7;
.super Lxm7;
.source "SourceFile"


# instance fields
.field public final c:Lym7$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lxm7;-><init>()V

    .line 2
    new-instance v0, Lym7$a;

    invoke-direct {v0}, Lym7$a;-><init>()V

    iput-object v0, p0, Lym7;->c:Lym7$a;

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Random;
    .locals 2

    .line 1
    iget-object v0, p0, Lym7;->c:Lym7$a;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "implStorage.get()"

    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Random;

    return-object v0
.end method
