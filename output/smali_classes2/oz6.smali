.class public Loz6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lnz6;


# direct methods
.method public constructor <init>(Lnz6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loz6;->e:Lnz6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Loz6;->e:Lnz6;

    iget-object v1, v0, Lnz6;->r:Ll07;

    iget-object v2, v0, Lnz6;->m:Ljava/lang/String;

    iget-object v0, v0, Lnz6;->o:Lg07;

    invoke-interface {v0}, Lg07;->b()Landroid/view/View;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
