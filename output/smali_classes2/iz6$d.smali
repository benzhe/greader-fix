.class public Liz6$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf07;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liz6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Lf07;


# direct methods
.method public constructor <init>(Lf07;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Liz6$d;->a:Lf07;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Liz6$d;->a:Lf07;

    invoke-interface {v0, p1, p2}, Lf07;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p2

    .line 2
    invoke-static {p1}, Lf07$a;->k(Ljava/lang/String;)Lf07$a;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-object p2

    .line 3
    :cond_0
    new-instance p1, Lsz6;

    invoke-direct {p1, p2}, Lsz6;-><init>(Ljava/io/InputStream;)V

    return-object p1
.end method
