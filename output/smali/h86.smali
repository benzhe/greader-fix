.class public final synthetic Lh86;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lob7;


# instance fields
.field public final a:Li86;


# direct methods
.method public constructor <init>(Li86;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh86;->a:Li86;

    return-void
.end method


# virtual methods
.method public a(Lnb7;)V
    .locals 0

    iget-object p1, p0, Lh86;->a:Li86;

    .line 1
    iget-object p1, p1, Li86;->a:Ls56;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
