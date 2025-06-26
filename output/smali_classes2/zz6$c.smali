.class public Lzz6$c;
.super Lzz6$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzz6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzz6<",
        "TE;>.b;"
    }
.end annotation


# instance fields
.field public final synthetic i:Lzz6;


# direct methods
.method public constructor <init>(Lzz6;Lzz6$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzz6$c;->i:Lzz6;

    invoke-direct {p0, p1}, Lzz6$b;-><init>(Lzz6;)V

    return-void
.end method
