.class public final synthetic Lqn1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkb0;


# instance fields
.field public final a:Lpn1;


# direct methods
.method public constructor <init>(Lpn1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqn1;->a:Lpn1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    iget-object p2, p0, Lqn1;->a:Lpn1;

    check-cast p1, Lxw0;

    .line 1
    iget-object p1, p2, Lpn1;->b:Ld31;

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p1, Ld31;->i:Z

    .line 3
    invoke-virtual {p1}, Ld31;->d()V

    return-void
.end method
