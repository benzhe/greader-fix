.class public final synthetic Ljn1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liy0;


# instance fields
.field public final a:Lus0;


# direct methods
.method public constructor <init>(Lus0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljn1;->a:Lus0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljn1;->a:Lus0;

    .line 2
    iget-object v1, v0, Lus0;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lxs0;->a(Ljava/lang/Object;)Z

    return-void
.end method
