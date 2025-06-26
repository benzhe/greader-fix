.class public final Ltw4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lsw4;

.field public final f:I

.field public final g:Ljava/lang/Throwable;

.field public final h:[B

.field public final i:Ljava/lang/String;

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lsw4;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null reference"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p2, p0, Ltw4;->e:Lsw4;

    iput p3, p0, Ltw4;->f:I

    iput-object p4, p0, Ltw4;->g:Ljava/lang/Throwable;

    iput-object p5, p0, Ltw4;->h:[B

    iput-object p1, p0, Ltw4;->i:Ljava/lang/String;

    iput-object p6, p0, Ltw4;->j:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Ltw4;->e:Lsw4;

    iget-object v1, p0, Ltw4;->i:Ljava/lang/String;

    iget v2, p0, Ltw4;->f:I

    iget-object v3, p0, Ltw4;->g:Ljava/lang/Throwable;

    iget-object v4, p0, Ltw4;->h:[B

    iget-object v5, p0, Ltw4;->j:Ljava/util/Map;

    .line 1
    invoke-interface/range {v0 .. v5}, Lsw4;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method
