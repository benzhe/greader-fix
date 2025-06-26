.class public Lwd5$a;
.super Lud5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwd5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lud5<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final g:Lwd5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwd5<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwd5;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwd5<",
            "TE;>;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lud5;-><init>(II)V

    .line 2
    iput-object p1, p0, Lwd5$a;->g:Lwd5;

    return-void
.end method
