.class public final Lj47$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj47;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lj47$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj47$c<",
            "TReqT;>;"
        }
    .end annotation
.end field

.field public b:Lj47$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj47$c<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field public c:Lj47$d;

.field public d:Ljava/lang/String;

.field public e:Z


# direct methods
.method public constructor <init>(Lj47$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lj47;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj47<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    new-instance v10, Lj47;

    iget-object v1, p0, Lj47$b;->c:Lj47$d;

    iget-object v2, p0, Lj47$b;->d:Ljava/lang/String;

    iget-object v3, p0, Lj47$b;->a:Lj47$c;

    iget-object v4, p0, Lj47$b;->b:Lj47$c;

    iget-boolean v8, p0, Lj47$b;->e:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lj47;-><init>(Lj47$d;Ljava/lang/String;Lj47$c;Lj47$c;Ljava/lang/Object;ZZZLj47$a;)V

    return-object v10
.end method
