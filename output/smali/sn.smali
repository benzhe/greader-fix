.class public final Lsn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ltn;


# direct methods
.method public constructor <init>(Ltn;)V
    .locals 0

    iput-object p1, p0, Lsn;->e:Ltn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lsn;->e:Ltn;

    iget-object v1, v0, Ltn;->d:Lfn;

    const/4 v2, 0x0

    .line 1
    iput v2, v1, Lfn;->a:I

    const/4 v2, 0x0

    .line 2
    iput-object v2, v1, Lfn;->f:Lsr4;

    .line 3
    sget-object v1, Lun;->m:Lin;

    invoke-static {v0, v1}, Ltn;->a(Ltn;Lin;)V

    return-void
.end method
