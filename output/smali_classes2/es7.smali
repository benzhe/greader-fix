.class public Les7;
.super Lis7;
.source "SourceFile"


# instance fields
.field public final b:Ljs7;


# direct methods
.method public constructor <init>(Ljs7;)V
    .locals 1

    const-string v0, "regEx"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lis7;-><init>()V

    iput-object p1, p0, Les7;->b:Ljs7;

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/String;)I
    .locals 2

    const-string v0, "str"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lyn7;

    const-string v1, "\\s+"

    invoke-direct {v0, v1}, Lyn7;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lyn7;->b(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method
