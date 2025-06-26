.class public final Luf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcv2<",
        "TI;TO;>;"
    }
.end annotation


# instance fields
.field public final a:Lbf0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbf0<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final b:Lef0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lef0<",
            "TI;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;

.field public final d:Law2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Law2<",
            "Lwe0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Law2;Ljava/lang/String;Lef0;Lbf0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Law2<",
            "Lwe0;",
            ">;",
            "Ljava/lang/String;",
            "Lef0<",
            "TI;>;",
            "Lbf0<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Luf0;->d:Law2;

    .line 3
    iput-object p2, p0, Luf0;->c:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Luf0;->b:Lef0;

    .line 5
    iput-object p4, p0, Luf0;->a:Lbf0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Law2<",
            "TO;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Luf0;->d:Law2;

    new-instance v1, Lxf0;

    invoke-direct {v1, p0, p1}, Lxf0;-><init>(Luf0;Ljava/lang/Object;)V

    .line 2
    sget-object p1, Lms0;->f:Lzv2;

    .line 3
    invoke-static {v0, v1, p1}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object p1

    return-object p1
.end method
