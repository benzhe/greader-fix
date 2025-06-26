.class public Lr87$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr87$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr87;->j(Lm37;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Lm37;


# direct methods
.method public constructor <init>(Lr87;Lm37;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lr87$e;->a:Lm37;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lr87$w;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lr87$w;->a:Ly57;

    iget-object v0, p0, Lr87$e;->a:Lm37;

    invoke-interface {p1, v0}, Ly57;->j(Lm37;)V

    return-void
.end method
