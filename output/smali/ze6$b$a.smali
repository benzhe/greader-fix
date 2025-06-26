.class public Lze6$b$a;
.super Lze6$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lze6$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lze6<",
        "TK;TV;>.d<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lze6$b;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lze6$b;->e:Lze6;

    invoke-direct {p0, p1}, Lze6$d;-><init>(Lze6;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lze6$d;->a()Lze6$e;

    move-result-object v0

    return-object v0
.end method
