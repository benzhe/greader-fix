.class public final Lj87$b;
.super Lc47$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj87;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lc47$e;


# direct methods
.method public constructor <init>(Lc47$e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc47$i;-><init>()V

    const-string v0, "result"

    .line 2
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lc47$e;

    iput-object p1, p0, Lj87$b;->a:Lc47$e;

    return-void
.end method


# virtual methods
.method public a(Lc47$f;)Lc47$e;
    .locals 0

    .line 1
    iget-object p1, p0, Lj87$b;->a:Lc47$e;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lj87$b;

    .line 2
    new-instance v1, Lnd5;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lnd5;-><init>(Ljava/lang/String;Lmd5;)V

    .line 3
    iget-object v0, p0, Lj87$b;->a:Lc47$e;

    const-string v2, "result"

    .line 4
    invoke-virtual {v1, v2, v0}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 5
    invoke-virtual {v1}, Lnd5;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
