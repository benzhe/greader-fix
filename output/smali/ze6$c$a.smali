.class public Lze6$c$a;
.super Lze6$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lze6$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lze6<",
        "TK;TV;>.d<TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lze6$c;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lze6$c;->e:Lze6;

    invoke-direct {p0, p1}, Lze6$d;-><init>(Lze6;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lze6$d;->a()Lze6$e;

    move-result-object v0

    iget-object v0, v0, Lze6$e;->j:Ljava/lang/Object;

    return-object v0
.end method
