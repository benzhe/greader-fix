.class public Lne6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laf6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lne6;->a(Ldg6;)Laf6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laf6<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lpd6;

.field public final synthetic b:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lne6;Lpd6;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lne6$a;->a:Lpd6;

    iput-object p3, p0, Lne6$a;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lne6$a;->a:Lpd6;

    iget-object v1, p0, Lne6$a;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lpd6;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
