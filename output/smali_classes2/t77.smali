.class public final Lt77;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lq77;


# direct methods
.method public constructor <init>(Lq77;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt77;->e:Lq77;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lt77;->e:Lq77;

    .line 2
    iget-object v0, v0, Lq77;->N:Lz27;

    .line 3
    sget-object v1, Lz27$a;->f:Lz27$a;

    const-string v2, "Entering SHUTDOWN state"

    invoke-virtual {v0, v1, v2}, Lz27;->a(Lz27$a;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lt77;->e:Lq77;

    .line 5
    iget-object v0, v0, Lq77;->s:Le67;

    .line 6
    sget-object v1, Li37;->i:Li37;

    invoke-virtual {v0, v1}, Le67;->a(Li37;)V

    return-void
.end method
