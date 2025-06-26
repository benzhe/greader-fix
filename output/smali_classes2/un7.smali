.class public final Lun7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lwm7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;",
        "Lwm7;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lsn7;


# direct methods
.method public constructor <init>(Lsn7;)V
    .locals 0

    iput-object p1, p0, Lun7;->e:Lsn7;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lun7;->e:Lsn7;

    invoke-interface {v0}, Lsn7;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
