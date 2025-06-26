.class public final Lc47$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc47;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final e:Lc47$e;


# instance fields
.field public final a:Lc47$h;

.field public final b:Le37$a;

.field public final c:Lx47;

.field public final d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lc47$e;

    sget-object v1, Lx47;->f:Lx47;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v2, v1, v3}, Lc47$e;-><init>(Lc47$h;Le37$a;Lx47;Z)V

    sput-object v0, Lc47$e;->e:Lc47$e;

    return-void
.end method

.method public constructor <init>(Lc47$h;Le37$a;Lx47;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc47$e;->a:Lc47$h;

    .line 3
    iput-object p2, p0, Lc47$e;->b:Le37$a;

    const-string p1, "status"

    .line 4
    invoke-static {p3, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lx47;

    iput-object p3, p0, Lc47$e;->c:Lx47;

    .line 5
    iput-boolean p4, p0, Lc47$e;->d:Z

    return-void
.end method

.method public static a(Lx47;)Lc47$e;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lx47;->f()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error status shouldn\'t be OK"

    invoke-static {v0, v1}, Lc50;->t(ZLjava/lang/Object;)V

    .line 2
    new-instance v0, Lc47$e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, p0, v1}, Lc47$e;-><init>(Lc47$h;Le37$a;Lx47;Z)V

    return-object v0
.end method

.method public static b(Lc47$h;)Lc47$e;
    .locals 4

    .line 1
    new-instance v0, Lc47$e;

    const-string v1, "subchannel"

    .line 2
    invoke-static {p0, v1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lx47;->f:Lx47;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Lc47$e;-><init>(Lc47$h;Le37$a;Lx47;Z)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lc47$e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lc47$e;

    .line 3
    iget-object v0, p0, Lc47$e;->a:Lc47$h;

    iget-object v2, p1, Lc47$e;->a:Lc47$h;

    invoke-static {v0, v2}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc47$e;->c:Lx47;

    iget-object v2, p1, Lc47$e;->c:Lx47;

    invoke-static {v0, v2}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc47$e;->b:Le37$a;

    iget-object v2, p1, Lc47$e;->b:Le37$a;

    .line 4
    invoke-static {v0, v2}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lc47$e;->d:Z

    iget-boolean p1, p1, Lc47$e;->d:Z

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lc47$e;->a:Lc47$h;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lc47$e;->c:Lx47;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lc47$e;->b:Le37$a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lc47$e;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lc50;->K0(Ljava/lang/Object;)Lnd5;

    move-result-object v0

    iget-object v1, p0, Lc47$e;->a:Lc47$h;

    const-string v2, "subchannel"

    .line 2
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 3
    iget-object v1, p0, Lc47$e;->b:Le37$a;

    const-string v2, "streamTracerFactory"

    .line 4
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 5
    iget-object v1, p0, Lc47$e;->c:Lx47;

    const-string v2, "status"

    .line 6
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 7
    iget-boolean v1, p0, Lc47$e;->d:Z

    const-string v2, "drop"

    .line 8
    invoke-virtual {v0, v2, v1}, Lnd5;->c(Ljava/lang/String;Z)Lnd5;

    .line 9
    invoke-virtual {v0}, Lnd5;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
