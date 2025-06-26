.class public final Ll47$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll47;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:Lt47;

.field public final c:Lb57;

.field public final d:Ll47$g;

.field public final e:Ljava/util/concurrent/ScheduledExecutorService;

.field public final f:Lz27;

.field public final g:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Lt47;Lb57;Ll47$g;Ljava/util/concurrent/ScheduledExecutorService;Lz27;Ljava/util/concurrent/Executor;Lk47;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p8, "defaultPort not set"

    .line 2
    invoke-static {p1, p8}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Ll47$a;->a:I

    const-string p1, "proxyDetector not set"

    .line 3
    invoke-static {p2, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Ll47$a;->b:Lt47;

    const-string p1, "syncContext not set"

    .line 4
    invoke-static {p3, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Ll47$a;->c:Lb57;

    const-string p1, "serviceConfigParser not set"

    .line 5
    invoke-static {p4, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Ll47$a;->d:Ll47$g;

    .line 6
    iput-object p5, p0, Ll47$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    iput-object p6, p0, Ll47$a;->f:Lz27;

    .line 8
    iput-object p7, p0, Ll47$a;->g:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lc50;->K0(Ljava/lang/Object;)Lnd5;

    move-result-object v0

    iget v1, p0, Ll47$a;->a:I

    const-string v2, "defaultPort"

    .line 2
    invoke-virtual {v0, v2, v1}, Lnd5;->a(Ljava/lang/String;I)Lnd5;

    iget-object v1, p0, Ll47$a;->b:Lt47;

    const-string v2, "proxyDetector"

    .line 3
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 4
    iget-object v1, p0, Ll47$a;->c:Lb57;

    const-string v2, "syncContext"

    .line 5
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 6
    iget-object v1, p0, Ll47$a;->d:Ll47$g;

    const-string v2, "serviceConfigParser"

    .line 7
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 8
    iget-object v1, p0, Ll47$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v2, "scheduledExecutorService"

    .line 9
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 10
    iget-object v1, p0, Ll47$a;->f:Lz27;

    const-string v2, "channelLogger"

    .line 11
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 12
    iget-object v1, p0, Ll47$a;->g:Ljava/util/concurrent/Executor;

    const-string v2, "executor"

    .line 13
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 14
    invoke-virtual {v0}, Lnd5;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
