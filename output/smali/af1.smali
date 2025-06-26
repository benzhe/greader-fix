.class public final synthetic Laf1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzd1;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laf1;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Laf1;->a:Ljava/lang/String;

    check-cast p1, Ldf1;

    .line 2
    invoke-interface {p1, v0}, Ldf1;->s0(Ljava/lang/String;)V

    return-void
.end method
