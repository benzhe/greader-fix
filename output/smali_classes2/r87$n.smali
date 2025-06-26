.class public Lr87$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr87$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr87;->k(Lz57;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "n"
.end annotation


# instance fields
.field public final synthetic a:Lr87;


# direct methods
.method public constructor <init>(Lr87;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr87$n;->a:Lr87;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lr87$w;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lr87$w;->a:Ly57;

    new-instance v1, Lr87$v;

    iget-object v2, p0, Lr87$n;->a:Lr87;

    invoke-direct {v1, v2, p1}, Lr87$v;-><init>(Lr87;Lr87$w;)V

    invoke-interface {v0, v1}, Ly57;->k(Lz57;)V

    return-void
.end method
