.class public final Le37$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le37;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lv27;

.field public final b:Lx27;


# direct methods
.method public constructor <init>(Lv27;Lx27;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "transportAttrs"

    .line 2
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lv27;

    iput-object p1, p0, Le37$b;->a:Lv27;

    const-string p1, "callOptions"

    .line 3
    invoke-static {p2, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lx27;

    iput-object p2, p0, Le37$b;->b:Lx27;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lc50;->K0(Ljava/lang/Object;)Lnd5;

    move-result-object v0

    iget-object v1, p0, Le37$b;->a:Lv27;

    const-string v2, "transportAttrs"

    .line 2
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 3
    iget-object v1, p0, Le37$b;->b:Lx27;

    const-string v2, "callOptions"

    .line 4
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 5
    invoke-virtual {v0}, Lnd5;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
