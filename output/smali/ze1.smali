.class public final synthetic Lze1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzd1;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lze1;->a:Ljava/lang/String;

    iput-object p2, p0, Lze1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lze1;->a:Ljava/lang/String;

    iget-object v1, p0, Lze1;->b:Ljava/lang/String;

    check-cast p1, Ldf1;

    .line 2
    invoke-interface {p1, v0, v1}, Ldf1;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
