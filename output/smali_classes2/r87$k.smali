.class public Lr87$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr87$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr87;->d(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(Lr87;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput p2, p0, Lr87$k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lr87$w;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lr87$w;->a:Ly57;

    iget v0, p0, Lr87$k;->a:I

    invoke-interface {p1, v0}, Ly57;->d(I)V

    return-void
.end method
