.class public final synthetic Lol1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkb0;


# instance fields
.field public final a:Lpl1;


# direct methods
.method public constructor <init>(Lpl1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lol1;->a:Lpl1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lol1;->a:Lpl1;

    check-cast p1, Lxw0;

    .line 1
    iget-object p1, v0, Lpl1;->b:Lio1;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, p2}, Lio1;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
